module Payrex
  module Entities
    class PayoutTransaction
      attr_reader :id,
        :amount,
        :payout_id,
        :transaction_type,
        :transaction_id,
        :created_at,
        :updated_at

      def initialize(api_resource)
        @id = api_resource.data["id"]
        @amount = api_resource.data["amount"]
        @payout_id = api_resource.data["payout_id"]
        @transaction_type = api_resource.data["transaction_type"]
        @transaction_id = api_resource.data["transaction_id"]
        @created_at = api_resource.data["created_at"]
        @updated_at = api_resource.data["updated_at"]
      end
    end
  end
end
