module Payrex
  module Services
    class CustomerSessionsService < BaseService
      PATH = "customer_sessions"

      def create(payload)
        request(
          method: :post,
          object: Payrex::Entities::CustomerSession,
          path: PATH,
          payload: payload
        )
      end

      def retrieve(id)
        request(
          method: :get,
          object: Payrex::Entities::CustomerSession,
          path: "#{PATH}/#{id}",
          payload: {}
        )
      end
    end
  end
end
