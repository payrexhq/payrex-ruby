module Payrex
  module Entities
    class Listing
      attr_reader :data,
        :has_more

      def initialize(data:, has_more:)
        @data = data
        @has_more = has_more
      end
    end
  end
end
