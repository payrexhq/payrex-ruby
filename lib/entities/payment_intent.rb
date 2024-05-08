module Payrex
  module Entities
    class PaymentIntent
      attr_reader :id,
                  :resource,
                  :amount,
                  :capture_type,
                  :client_secret,
                  :currency,
                  :description,
                  :livemode,
                  :metadata,
                  :latest_payment,
                  :payment_method_id,
                  :payment_methods,
                  :status,
                  :next_action,
                  :return_url,
                  :capture_before_at,
                  :created_at,
                  :updated_at

      def initialize(api_resource)
        @id = api_resource.data["id"]
        @resource = api_resource.data["resource"]
        @amount = api_resource.data["amount"]
        @capture_type = api_resource.data["capture_type"]
        @client_secret = api_resource.data["client_secret"]
        @currency = api_resource.data["currency"]
        @description = api_resource.data["description"]
        @livemode = api_resource.data["livemode"]
        @metadata = api_resource.data["metadata"]
        @latest_payment = api_resource.data["latest_payment"]
        @payment_method_id = api_resource.data["payment_method_id"]
        @payment_methods = api_resource.data["payment_methods"]
        @status = api_resource.data["status"]
        @next_action = api_resource.data["next_action"]
        @return_url = api_resource.data["return_url"]
        @capture_before_at = api_resource.data["capture_before_at"]
        @created_at = api_resource.data["created_at"]
        @updated_at = api_resource.data["updated_at"]
      end
    end
  end
end
