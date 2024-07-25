module Payrex
  module Services
    class RefundsService < BaseService
      PATH = "refunds"

      def create(payload)
        request(
          method: :post,
          object: Payrex::Entities::Refund,
          path: PATH,
          payload: payload
        )
      end
    end
  end
end
