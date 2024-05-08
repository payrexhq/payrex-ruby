module Payrex
  module Entities
    class Refund
      attr_reader :id,
                  :resource,
                  :amount,
                  :currency,
                  :livemode,
                  :status,
                  :description,
                  :reason,
                  :remarks,
                  :payment_id,
                  :metadata,
                  :created_at,
                  :updated_at

      def initialize(api_resource)
        @id = api_resource.data["id"]
        @resource = api_resource.data["resource"]
        @amount = api_resource.data["amount"]
        @currency = api_resource.data["currency"]
        @livemode = api_resource.data["livemode"]
        @status = api_resource.data["status"]
        @description = api_resource.data["description"]
        @reason = api_resource.data["reason"]
        @remarks = api_resource.data["remarks"]
        @payment_id = api_resource.data["payment_id"]
        @metadata = api_resource.data["metadata"]
        @created_at = api_resource.data["created_at"]
        @updated_at = api_resource.data["updated_at"]
      end
    end
  end
end
