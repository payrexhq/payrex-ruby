module Payrex
  class HttpClient
    def initialize(api_key:, base_url:)
      @api_key = api_key
      @base_url = base_url
    end

    def request(method:, path:, params: {})
      uri = URI("#{@base_url}/#{path}")

      request = build_request(
        method: method,
        params: params,
        uri: uri
      )

      response = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == "https") { |http| http.request(request) }

      return nil if response.body.nil?

      handle_error(response) if failed?(response)

      Payrex::ApiResource.new(JSON.parse(response.body))
    end

    private

    def build_request(method:, uri:, params: {})
      request_class = Net::HTTP.const_get(method.capitalize)

      if %i[get delete].include?(method)
        uri = set_query_params(uri, params)
      end

      request = request_class.new(uri)

      request = set_request_headers(request)

      if %i[post put].include?(method)
        request = set_request_body(request, params)
      end

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
      request.content_type = "application/x-www-form-urlencoded"

      request
    end

    def set_request_body(request, params)
      request.body = ::Payrex::Parameter.encode(params).gsub(/%5B[\d+]%5D/, "%5B%5D")

      request
    end

    def set_query_params(uri, params)
      return uri if params.nil? || params.empty?

      uri.query = URI.encode_www_form(params)

      uri
    end

    def failed?(response)
      response.code < "200" || response.code >= "400"
    end
  end
end
