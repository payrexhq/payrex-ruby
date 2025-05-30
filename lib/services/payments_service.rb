module Payrex
  module Services
    class PaymentsService < BaseService
      PATH = "payments"

      def retrieve(id)
        request(
          method: :get,
          object: Payrex::Entities::Payment,
          path: "#{PATH}/#{id}",
          payload: {}
        )
      end

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
