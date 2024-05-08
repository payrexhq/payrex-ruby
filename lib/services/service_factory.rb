
module Payrex
  module Services
    class ServiceFactory
      def self.get(name)
        service_name = name.to_s.split("_").map(&:capitalize).join
        service_class = Payrex::Services.const_get("#{service_name}Service")

        # TODO: Implement error handling
        raise ArgumentError, "Unknown service: #{name}" if !service_class.is_a?(Class)

        service_class
      end

      def self.names
        Payrex::Services.constants
          .map { |c| Payrex::Services.const_get(c) }
          .select { |c| c.is_a?(Class) }
          .map { |c| c.to_s.split("::").last.sub(/Service$/, "").gsub(/([a-z\d])([A-Z])/, '\1_\2').downcase }
      end
    end
  end
end
