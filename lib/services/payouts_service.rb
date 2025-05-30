module Payrex
  module Services
    class PayoutsService < BaseService
      PATH = "payouts"

      def list_transactions(id, payload = {})
        request(
          is_list: true,
          method: :get,
          object: Payrex::Entities::PayoutTransaction,
          path: "#{PATH}/#{id}/transactions",
          payload: payload
        )
      end
    end
  end
end
