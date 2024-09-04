module Payrex
  module Entities
    class Customer
      attr_reader :id,
        :billing_statement_prefix,
        :currency,
        :email,
        :livemode,
        :name,
        :metadata,
        :next_billing_statement_sequence_number,
        :created_at,
        :updated_at

      def initialize(api_resource)
        data = api_resource.data

        @id = data["id"]
        @billing_statement_prefix = data["billing_statement_prefix"]
        @currency = data["currency"]
        @email = data["email"]
        @livemode = data["livemode"]
        @name = data["name"]
        @metadata = data["metadata"]
        @next_billing_statement_sequence_number = data["next_billing_statement_sequence_number"]
        @created_at = data["created_at"]
        @updated_at = data["updated_at"]
      end
    end
  end
end
