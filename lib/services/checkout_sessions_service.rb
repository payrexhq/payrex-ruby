module Payrex
  module Services
    class CheckoutSessionsService < BaseService
      PATH = "checkout_sessions"

      def create(payload)
        request(
          method: :post,
          object: Payrex::Entities::CheckoutSession,
          path: PATH,
          payload: payload
        )
      end

      def list(payload)
        request(
          is_list: true,
          method: :get,
          object: Payrex::Entities::CheckoutSession,
          path: PATH,
          payload: payload
        )
      end

      def retrieve(id)
        request(
          method: :get,
          object: Payrex::Entities::CheckoutSession,
          path: "#{PATH}/#{id}",
          payload: {}
        )
      end

      def expire(id)
        request(
          method: :post,
          object: Payrex::Entities::CheckoutSession,
          path: "#{PATH}/#{id}/expire",
          payload: {}
        )
      end
    end
  end
end
