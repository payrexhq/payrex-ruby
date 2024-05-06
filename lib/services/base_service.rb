module Payrex
  module Services
    class BaseService
      def initialize(client)
        @client = client
      end

      def request(method:, object:, path:, payload: {})
        api_resource = Payrex::HttpClient.new(@client).request(
          method: method,
          params: payload,
          path: path
        )

        object.new(api_resource)
      end
    end
  end
end
