module Payrex
  module Entities
    class Deleted
      attr_reader :id,
        :deleted

      def initialize(api_resource)
        data = api_resource.data

        @id = data["id"]
        @deleted = data["deleted"]
      end
    end
  end
end
