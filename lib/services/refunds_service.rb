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

      def update(id, payload)
        request(
          method: :put,
          object: Payrex::Entities::Refund,
          path: "#{PATH}/#{id}",
          payload: payload
        )
      end
    end
  end
end
