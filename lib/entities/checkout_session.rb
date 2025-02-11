module Payrex
  module Entities
    class CheckoutSession
      attr_reader :id,
        :billing_details_collection,
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
        data = api_resource.data

        @id = data["id"]
        @billing_details_collection = data["billing_details_collection"]
        @customer_reference_id = data["customer_reference_id"]
        @client_secret = data["client_secret"]
        @status = data["status"]
        @currency = data["currency"]
        @line_items = data["line_items"]
        @livemode = data["livemode"]
        @url = data["url"]
        @payment_intent = data["payment_intent"]
        @metadata = data["metadata"]
        @success_url = data["success_url"]
        @cancel_url = data["cancel_url"]
        @payment_methods = data["payment_methods"]
        @description = data["description"]
        @submit_type = data["submit_type"]
        @expires_at = data["expires_at"]
        @created_at = data["created_at"]
        @updated_at = data["updated_at"]
      end
    end
  end
end
