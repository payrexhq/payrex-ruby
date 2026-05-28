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

      def list_payment_methods(id, payload = {})
        request(
          is_list: true,
          method: :get,
          object: Payrex::Entities::PaymentMethod,
          path: "#{PATH}/#{id}/payment_methods",
          payload: payload
        )
      end

      def delete_payment_method(id, payload = {})
        payment_method_id = payload["payment_method_id"] || payload[:payment_method_id]

        request(
          method: :delete,
          object: Payrex::Entities::Deleted,
          path: "#{PATH}/#{id}/payment_methods/#{payment_method_id}",
          payload: {}
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
