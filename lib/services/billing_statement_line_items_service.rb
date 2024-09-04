module Payrex
  module Services
    class BillingStatementLineItemsService < BaseService
      PATH = "billing_statement_line_items"

      def create(payload)
        request(
          method: :post,
          object: Payrex::Entities::BillingStatementLineItem,
          path: PATH,
          payload: payload
        )
      end

      def retrieve(id)
        request(
          method: :get,
          object: Payrex::Entities::BillingStatementLineItem,
          path: "#{PATH}/#{id}",
          payload: {}
        )
      end

      def update(id, payload)
        request(
          method: :put,
          object: Payrex::Entities::BillingStatementLineItem,
          path: "#{PATH}/#{id}",
          payload: payload
        )
      end

      def delete(id)
        request(
          method: :delete,
          object: Payrex::Entities::Deleted,
          path: "#{PATH}/#{id}",
          payload: {}
        )
      end
    end
  end
end
