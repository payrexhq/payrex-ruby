module Payrex
  module Entities
    class PaymentMethod
      attr_reader :id,
                  :resource,
                  :type,
                  :billing_details,
                  :livemode,
                  :metadata,
                  :created_at,
                  :updated_at

      def initialize(api_resource)
        @id = api_resource.data["id"]
        @resource = api_resource.data["resource"]
        @type = api_resource.data["type"]
        @billing_details = api_resource.data["billing_details"]
        @livemode = api_resource.data["livemode"]
        @metadata = api_resource.data["metadata"]
        @created_at = api_resource.data["created_at"]
        @updated_at = api_resource.data["updated_at"]
      end
    end
  end
end
