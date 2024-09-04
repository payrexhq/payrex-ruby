module Payrex
  module Services
    class BillingStatementsService < BaseService
      PATH = "billing_statements"

      def create(payload)
        request(
          method: :post,
          object: Payrex::Entities::BillingStatement,
          path: PATH,
          payload: payload
        )
      end

      def retrieve(id)
        request(
          method: :get,
          object: Payrex::Entities::BillingStatement,
          path: "#{PATH}/#{id}",
          payload: {}
        )
      end

      def list(payload = {})
        request(
          is_list: true,
          method: :get,
          object: Payrex::Entities::BillingStatement,
          path: PATH,
          payload: payload
        )
      end

      def update(id, payload)
        request(
          method: :put,
          object: Payrex::Entities::BillingStatement,
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

      def finalize(id, payload)
        request(
          method: :post,
          object: Payrex::Entities::BillingStatement,
          path: "#{PATH}/#{id}/finalize",
          payload: payload
        )
      end

      def void(id, payload)
        request(
          method: :post,
          object: Payrex::Entities::BillingStatement,
          path: "#{PATH}/#{id}/void",
          payload: payload
        )
      end

      def mark_uncollectible(id, payload)
        request(
          method: :post,
          object: Payrex::Entities::BillingStatement,
          path: "#{PATH}/#{id}/mark_uncollectible",
          payload: payload
        )
      end
    end
  end
end
