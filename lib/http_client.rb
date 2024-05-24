module Payrex
  class HttpClient
    def initialize(api_key:, base_url:)
      @api_key = api_key
      @base_url = base_url
    end

    def request(method:, params: {}, path:)
      uri = URI("#{@base_url}/#{path}")

      request = build_request(method: method, params: params, uri: uri)

      response = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == "https") { |http| http.request(request) }

      raise StandardError.new(response.to_s) if response.body.nil?

      handle_error(response) if failed?(response)

      Payrex::ApiResource.new(JSON.parse(response.body))
    end

    private

    def build_request(method:, params: {}, uri:)
      request_class = Net::HTTP.const_get(method.capitalize)
      request = request_class.new(uri)

      set_request_headers(request)
      set_request_body(request, params) if %i[post put].include?(method)

      request
    end

    def handle_error(response)
      begin
        json_response_body = JSON.parse(response.body)
      rescue JSON::ParserError
        raise StandardError.new(response.body)
      end

      case response.code
      when "400"
        raise Payrex::Errors::RequestInvalidError.new(json_response_body)
      when "401"
        raise Payrex::Errors::AuthenticationInvalidError.new(json_response_body)
      when "404"
        raise Payrex::Errors::ResourceNotFoundError.new(json_response_body)
      else
        raise Payrex::Errors::BaseError.new(json_response_body)
      end
    end

    def set_request_headers(request)
      request.basic_auth(@api_key, "")
      request["Content-Type"] = "application/json"
    end

    def set_request_body(request, params)
      request.body = params.to_json
    end

    def failed?(response)
      response.code < "200" || response.code >= "400"
    end
  end
end
