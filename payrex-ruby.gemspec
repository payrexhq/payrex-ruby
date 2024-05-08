Gem::Specification.new do |s|
  s.name        = "payrex-ruby"
  s.version     = "0.1.0"
  s.summary     = "PayRex Ruby"
  s.description = "PayRex Ruby Library"
  s.author      = "PayRex"
  s.email       = "support@payrexhq.com"
  s.files       = [
    "lib/api_resource.rb",
    "lib/client.rb",
    "lib/config.rb",
    "lib/http_client.rb",
    "lib/payrex-ruby.rb",
    "lib/entities/payment_intent.rb",
    "lib/services/base_service.rb",
    "lib/services/payment_intent_service.rb",
    "lib/services/service_factory.rb"
  ]
  s.homepage    = "https://www.payrexhq.com/"
  s.license     = "MIT"
end
