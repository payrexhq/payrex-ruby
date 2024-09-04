module Payrex
  module Entities
    class BillingStatementLineItem
      attr_reader :id,
        :unit_price,
        :quantity,
        :billing_statement_id,
        :description,
        :livemode,
        :created_at,
        :updated_at

      def initialize(api_resource)
        data = api_resource.data

        @id = data["id"]
        @unit_price = data["unit_price"]
        @quantity = data["quantity"]
        @billing_statement_id = data["billing_statement_id"]
        @description = data["description"]
        @livemode = data["livemode"]
        @created_at = data["created_at"]
        @updated_at = data["updated_at"]
      end
    end
  end
end
