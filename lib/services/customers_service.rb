module Payrex
  module Services
    class CustomersService < BaseService
      PATH = "customers"

      def create(payload)
        request(
          method: :post,
          object: Payrex::Entities::Customer,
          path: PATH,
          payload: payload
        )
      end

      def retrieve(id)
        request(
          method: :get,
          object: Payrex::Entities::Customer,
          path: "#{PATH}/#{id}",
          payload: {}
        )
      end

      def list(payload = {})
        request(
          is_list: true,
          method: :get,
          object: Payrex::Entities::Customer,
          path: PATH,
          payload: payload
        )
      end

      def update(id, payload)
        request(
          method: :put,
          object: Payrex::Entities::Customer,
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
