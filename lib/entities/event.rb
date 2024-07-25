module Payrex
  module Entities
    class Event
      attr_reader :id,
        :data,
        :type,
        :pending_webhooks,
        :previous_attributes,
        :created_at,
        :updated_at

      def initialize(api_resource)
        @id = api_resource.data["id"]
        @data = api_resource.data["data"]
        @type = api_resource.data["type"]
        @pending_webhooks = api_resource.data["pending_webhooks"]
        @previous_attributes = api_resource.data["previous_attributes"]
        @created_at = api_resource.data["created_at"]
        @updated_at = api_resource.data["updated_at"]
      end
    end
  end
end
