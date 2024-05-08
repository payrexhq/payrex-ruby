module Payrex
  class PayrexError
    attr_reader :code,
                :detail,
                :parameter

    def initialize(error)
      @code = error["code"]
      @detail = error["detail"]
      @parameter = error["parameter"]
    end
  end
end
