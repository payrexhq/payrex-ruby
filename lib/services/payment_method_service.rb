module Payrex
  module Services
    class PaymentMethodService < BaseService
      PATH = "payment_methods"

      def create(payload)
        request(
          method: :post,
          object: Payrex::Entities::PaymentMethod,
          path: PATH,
          payload: payload
        )
      end
    end
  end
end
