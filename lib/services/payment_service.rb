module Payrex
  module Services
    class PaymentService < BaseService
      PATH = "payments"

      def update(id, payload)
        request(
          method: :put,
          object: Payrex::Entities::Payment,
          path: "#{PATH}/#{id}",
          payload: payload
        )
      end
    end
  end
end
