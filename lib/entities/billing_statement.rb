module Payrex
  module Entities
    class BillingStatement
      attr_reader :id,
        :amount,
        :currency,
        :customer_id,
        :description,
        :due_at,
        :finalized_at,
        :billing_statement_number,
        :billing_statement_url,
        :line_items,
        :livemode,
        :metadata,
        :payment_intent,
        :statement_descriptor,
        :status,
        :payment_settings,
        :customer,
        :created_at,
        :updated_at

      def initialize(api_resource)
        data = api_resource.data

        @id = data["id"]
        @amount = data["amount"]
        @currency = data["currency"]
        @customer_id = data["customer_id"]
        @description = data["description"]
        @due_at = data["due_at"]
        @finalized_at = data["finalized_at"]
        @billing_statement_number = data["billing_statement_number"]
        @billing_statement_url = data["billing_statement_url"]
        @line_items = data["line_items"]
        @livemode = data["livemode"]
        @metadata = data["metadata"]
        @payment_intent = data["payment_intent"]
        @statement_descriptor = api_resource.data["statement_descriptor"]
        @status = data["status"]
        @payment_settings = data["payment_settings"]
        @customer = data["customer"]
        @created_at = data["created_at"]
        @updated_at = data["updated_at"]
      end
    end
  end
end
