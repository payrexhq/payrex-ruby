module Payrex
  module Entities
    class Merchant
      attr_reader :id,
        :connection_type,
        :livemode,
        :created_at,
        :updated_at

      def initialize(api_resource)
        @id = api_resource.data["id"]
        @connection_type = api_resource.data["connection_type"]
        @livemode = api_resource.data["livemode"]
        @created_at = api_resource.data["created_at"]
        @updated_at = api_resource.data["updated_at"]
      end
    end
  end
end
