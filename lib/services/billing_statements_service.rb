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

      def finalize(id)
        request(
          method: :post,
          object: Payrex::Entities::BillingStatement,
          path: "#{PATH}/#{id}/finalize"
        )
      end

      def send(id)
        request(
          method: :post,
          object: nil,
          path: "#{PATH}/#{id}/send"
        )
      end

      def void(id)
        request(
          method: :post,
          object: Payrex::Entities::BillingStatement,
          path: "#{PATH}/#{id}/void"
        )
      end

      def mark_uncollectible(id)
        request(
          method: :post,
          object: Payrex::Entities::BillingStatement,
          path: "#{PATH}/#{id}/mark_uncollectible"
        )
      end
    end
  end
end
