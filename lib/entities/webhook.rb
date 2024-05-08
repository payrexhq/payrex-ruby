module Payrex
  module Entities
    class Webhook
      attr_reader :id,
                  :resource,
                  :secret_key,
                  :status,
                  :description,
                  :livemode,
                  :url,
                  :events,
                  :created_at,
                  :updated_at

      def initialize(api_resource)
        @id = api_resource.data["id"]
        @resource = api_resource.data["resource"]
        @secret_key = api_resource.data["secret_key"]
        @status = api_resource.data["status"]
        @description = api_resource.data["description"]
        @livemode = api_resource.data["livemode"]
        @url = api_resource.data["url"]
        @events = api_resource.data["events"]
        @created_at = api_resource.data["created_at"]
        @updated_at = api_resource.data["updated_at"]
      end
    end
  end
end
