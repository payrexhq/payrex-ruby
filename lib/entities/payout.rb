module Payrex
  module Entities
    class Payout
      attr_reader :id,
        :amount,
        :destination,
        :livemode,
        :net_amount,
        :status,
        :created_at,
        :updated_at

      def initialize(api_resource)
        @id = api_resource.data["id"]
        @amount = api_resource.data["amount"]
        @destination = api_resource.data["destination"]
        @livemode = api_resource.data["livemode"]
        @net_amount = api_resource.data["net_amount"]
        @status = api_resource.data["status"]
        @created_at = api_resource.data["created_at"]
        @updated_at = api_resource.data["updated_at"]
      end
    end
  end
end
