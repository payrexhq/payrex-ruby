module Payrex
  class HttpClient
    def initialize(client)
      @client = client
    end

    def request(method:, params: {}, path:)
      uri = URI("#{@client.config.api_base_url}/#{path}")

      request = build_request(method: method, params: params, uri: uri)

      response = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == "https") { |http| http.request(request) }

      # TODO: Implement error handling

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

    def set_request_headers(request)
      request.basic_auth(@client.config.api_key, "")
      request["Content-Type"] = "application/json"
    end

    def set_request_body(request, params)
      request.body = { data: { attributes: params } }.to_json
    end
  end
end
