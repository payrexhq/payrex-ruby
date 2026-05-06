module Payrex
  module Entities
    class SetupIntent
      attr_reader :id,
        :livemode,
        :client_secret,
        :next_action,
        :payment_methods,
        :return_url,
        :status,
        :usage,
        :customer,
        :description,
        :created_at,
        :updated_at

      def initialize(api_resource)
        @id = api_resource.data["id"]
        @livemode = api_resource.data["livemode"]
        @client_secret = api_resource.data["client_secret"]
        @next_action = api_resource.data["next_action"]
        @payment_methods = api_resource.data["payment_methods"]
        @return_url = api_resource.data["return_url"]
        @status = api_resource.data["status"]
        @usage = api_resource.data["usage"]
        @customer = api_resource.data["customer"]
        @description = api_resource.data["description"]
        @created_at = api_resource.data["created_at"]
        @updated_at = api_resource.data["updated_at"]
      end
    end
  end
end
