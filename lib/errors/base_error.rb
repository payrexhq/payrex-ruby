module Payrex
  module Errors
    class BaseError < StandardError
      attr_reader :errors

      def initialize(response)
        @errors = response["errors"].map { |error| PayrexError.new(error) }
      end
    end
  end
end
