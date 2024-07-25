module Payrex
  module Services
    class BaseService
      def initialize(client)
        @client = client
      end

      def request(method:, object:, path:, is_list: false, payload: {})
        http_client = Payrex::HttpClient.new(api_key: @client.config.api_key, base_url: @client.config.api_base_url)

        api_resource = http_client.request(
          method: method,
          params: payload,
          path: path
        )

        if is_list
          data = api_resource.data["data"].map { |data| object.new(Payrex::ApiResource.new(data)) }

          Payrex::Entities::Listing.new(data: data, has_more: api_resource.data["has_more"])
        else
          object.new(api_resource)
        end
      end
    end
  end
end
