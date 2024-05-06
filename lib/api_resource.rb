module Payrex
  class ApiResource
    attr_reader :data

    def initialize(response)
      @data = response
    end
  end
end
