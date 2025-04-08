module Payrex
  module Entities
    class CustomerSession
      attr_reader :id,
        :customer_id,
        :client_secret,
        :merchant_id,
        :livemode,
        :payment_intent_id,
        :components,
        :created_at,
        :updated_at

      def initialize(api_resource)
        data = api_resource.data

        @id = data["id"]
        @customer_id = data["customer_id"]
        @client_secret = data["client_secret"]
        @merchant_id = data["merchant_id"]
        @livemode = data["livemode"]
        @payment_intent_id = data["payment_intent_id"]
        @components = data["components"]
        @created_at = data["created_at"]
        @updated_at = data["updated_at"]
      end
    end
  end
end
