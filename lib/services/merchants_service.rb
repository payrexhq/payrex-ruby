module Payrex
  module Services
    class MerchantsService < BaseService
      PATH = "merchants"

      def create(payload)
        request(
          method: :post,
          object: Payrex::Entities::Merchant,
          path: PATH,
          payload: payload
        )
      end
    end
  end
end
