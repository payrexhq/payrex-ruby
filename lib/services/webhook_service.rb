module Payrex
  module Services
    class WebhookService < BaseService
      PATH = "webhooks"

      def create(payload)
        request(
          method: :post,
          object: Payrex::Entities::Webhook,
          path: PATH,
          payload: payload
        )
      end

      def update(id, payload)
        request(
          method: :put,
          object: Payrex::Entities::Webhook,
          path: "#{PATH}/#{id}",
          payload: payload
        )
      end

      def list(payload)
        request(
          is_list: true,
          method: :get,
          object: Payrex::Entities::Webhook,
          path: PATH,
          payload: payload
        )
      end

      def retrieve(id)
        request(
          method: :get,
          object: Payrex::Entities::Webhook,
          path: "#{PATH}/#{id}",
          payload: {}
        )
      end

      def enable(id)
        request(
          method: :post,
          object: Payrex::Entities::Webhook,
          path: "#{PATH}/#{id}/enable",
          payload: {}
        )
      end

      def disable(id)
        request(
          method: :post,
          object: Payrex::Entities::Webhook,
          path: "#{PATH}/#{id}/disable",
          payload: {}
        )
      end

      def delete(id)
        request(
          method: :delete,
          object: Payrex::Entities::Webhook,
          path: "#{PATH}/#{id}",
          payload: {}
        )
      end
    end
  end
end
