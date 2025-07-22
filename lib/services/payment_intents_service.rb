module Payrex
  module Services
    class PaymentIntentsService < BaseService
      PATH = "payment_intents"

      def cancel(id)
        request(
          method: :post,
          object: Payrex::Entities::PaymentIntent,
          path: "#{PATH}/#{id}/cancel"
        )
      end

      def capture(id, payload)
        request(
          method: :post,
          object: Payrex::Entities::PaymentIntent,
          path: "#{PATH}/#{id}/capture",
          payload: payload
        )
      end

      def create(payload)
        request(
          method: :post,
          object: Payrex::Entities::PaymentIntent,
          path: PATH,
          payload: payload
        )
      end

      def retrieve(id)
        request(
          method: :get,
          object: Payrex::Entities::PaymentIntent,
          path: "#{PATH}/#{id}",
          payload: {}
        )
      end
    end
  end
end
