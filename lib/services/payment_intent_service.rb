module Payrex
  module Services
    class PaymentIntentService < BaseService
      PATH = "payment_intents"

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
