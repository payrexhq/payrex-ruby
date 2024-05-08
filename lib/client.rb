module Payrex
  class Client
    attr_reader :config

    def initialize(api_key)
      @config = Payrex::Config.new(api_key)

      initialize_services
    end

    private

    def initialize_services
      Payrex::Services::ServiceFactory.names.each do |name|
        define_singleton_method(name) do
          service = Payrex::Services::ServiceFactory.get(name)

          service.new(self)
        end
      end
    end
  end
end
