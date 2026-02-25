module Payrex
  class Config
    attr_reader :api_base_url,
      :api_key

    API_BASE_URL = "http://api.localhost"

    def initialize(api_key)
      @api_base_url = API_BASE_URL
      @api_key = api_key
    end
  end
end
