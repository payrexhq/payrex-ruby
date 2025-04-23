module Payrex
  module Entities
    class CustomerSession
      attr_reader :id,
        :customer_id,
        :client_secret,
        :livemode,
        :components,
        :expired,
        :expired_at,
        :created_at,
        :updated_at

      def initialize(api_resource)
        data = api_resource.data

        @id = data["id"]
        @customer_id = data["customer_id"]
        @client_secret = data["client_secret"]
        @livemode = data["livemode"]
        @components = data["components"]
        @expired = data["expired"]
        @expired_at = data["expired_at"]
        @created_at = data["created_at"]
        @updated_at = data["updated_at"]
      end
    end
  end
end
