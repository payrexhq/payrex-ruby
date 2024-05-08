module Payrex
  module Services
    class BaseService
      def initialize(client)
        @client = client
      end

      def request(method:, object:, path:, payload: {})
        http_client = Payrex::HttpClient.new(api_key: @client.config.api_key, base_url: @client.config.api_base_url)

        api_resource = http_client.request(
          method: method,
          params: payload,
          path: path
        )

        object.new(api_resource)
      end
    end
  end
end
