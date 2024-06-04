module Payrex
  module Entities
    class Payment
      attr_reader :id,
                  :resource,
                  :amount,
                  :amount_refunded,
                  :billing,
                  :currency,
                  :description,
                  :fee,
                  :livemode,
                  :metadata,
                  :net_amount,
                  :payment_intent_id,
                  :payment_method,
                  :refunded,
                  :status,
                  :created_at,
                  :updated_at

      def initialize(api_resource)
        @id = api_resource.data["id"]
        @resource = api_resource.data["resource"]
        @amount = api_resource.data["amount"]
        @amount_refunded = api_resource.data["amount_refunded"]
        @billing = api_resource.data["billing"]
        @currency = api_resource.data["currency"]
        @description = api_resource.data["description"]
        @fee = api_resource.data["fee"]
        @livemode = api_resource.data["livemode"]
        @metadata = api_resource.data["metadata"]
        @net_amount = api_resource.data["net_amount"]
        @payment_intent_id = api_resource.data["payment_intent_id"]
        @payment_method = api_resource.data["payment_method"]
        @refunded = api_resource.data["refunded"]
        @status = api_resource.data["status"]
        @created_at = api_resource.data["created_at"]
        @updated_at = api_resource.data["updated_at"]
      end
    end
  end
end
