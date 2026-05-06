module Payrex
  module Services
    class SetupIntentsService < BaseService
      PATH = "setup_intents"

      def cancel(id)
        request(
          method: :post,
          object: Payrex::Entities::SetupIntent,
          path: "#{PATH}/#{id}/cancel"
        )
      end

      def create(payload)
        request(
          method: :post,
          object: Payrex::Entities::SetupIntent,
          path: PATH,
          payload: payload
        )
      end

      def retrieve(id)
        request(
          method: :get,
          object: Payrex::Entities::SetupIntent,
          path: "#{PATH}/#{id}",
          payload: {}
        )
      end
    end
  end
end
