module Payrex
  module Entities
    class CheckoutSession
      attr_reader :id,
        :customer_reference_id,
        :client_secret,
        :status,
        :currency,
        :line_items,
        :livemode,
        :url,
        :payment_intent,
        :metadata,
        :success_url,
        :cancel_url,
        :payment_methods,
        :description,
        :submit_type,
        :expires_at,
        :created_at,
        :updated_at

      def initialize(api_resource)
        @id = api_resource.data["id"]
        @customer_reference_id = api_resource.data["customer_reference_id"]
        @client_secret = api_resource.data["client_secret"]
        @status = api_resource.data["status"]
        @currency = api_resource.data["currency"]
        @line_items = api_resource.data["line_items"]
        @livemode = api_resource.data["livemode"]
        @url = api_resource.data["url"]
        @payment_intent = ::Payrex::Entities::PaymentIntent.new(
          ::Payrex::ApiResource.new(
            api_resource.data["payment_intent"]
          )
        )
        @metadata = api_resource.data["metadata"]
        @success_url = api_resource.data["success_url"]
        @cancel_url = api_resource.data["cancel_url"]
        @payment_methods = api_resource.data["payment_methods"]
        @description = api_resource.data["description"]
        @submit_type = api_resource.data["submit_type"]
        @expires_at = api_resource.data["expires_at"]
        @created_at = api_resource.data["created_at"]
        @updated_at = api_resource.data["updated_at"]
      end
    end
  end
end
