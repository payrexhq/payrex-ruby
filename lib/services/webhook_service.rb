module Payrex
  module Services
    class WebhookService < BaseService
      PATH = "webhooks"

      def parse_event(payload:, signature_header:, webhook_secret_key:)
        raise Payrex::Errors::ValueUnexpectedError.new("The signature must be a string.") if !signature_header.is_a?(String)
  
        signature_array = signature_header.split(",")
  
        raise Payrex::Errors::ValueUnexpectedError.new("The format of signature #{signature_header} is invalid.") if signature_array.length < 3
  
        timestamp = signature_array[0].split("=")[1]
        test_mode_signature = signature_array[1].split("=")[1]
        live_mode_signature = signature_array[2].split("=")[1]
  
        comparison_signature = live_mode_signature || test_mode_signature
  
        hash = OpenSSL::HMAC.hexdigest(
          OpenSSL::Digest.new("sha256"),
          webhook_secret_key,
          "#{timestamp}.#{payload}"
        )

        raise Payrex::Errors::SignatureInvalidError.new("The signature is invalid.") if hash != comparison_signature
  
        api_resource = Payrex::ApiResource.new(JSON.parse(payload))
  
        Payrex::Entities::Event.new(api_resource)
      end

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
