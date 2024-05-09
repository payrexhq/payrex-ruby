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
    "lib/payrex_error.rb",
    "lib/payrex-ruby.rb",
    "lib/entities/checkout_session.rb",
    "lib/entities/event.rb",
    "lib/entities/listing.rb",
    "lib/entities/merchant.rb",
    "lib/entities/payment_intent.rb",
    "lib/entities/payment_method.rb",
    "lib/entities/refund.rb",
    "lib/entities/webhook.rb",
    "lib/errors/base_error.rb",
    "lib/errors/authentication_invalid_error.rb",
    "lib/errors/request_invalid_error.rb",
    "lib/errors/resource_not_found_error.rb",
    "lib/errors/signature_invalid_error.rb",
    "lib/errors/value_unexpected_error.rb",
    "lib/services/base_service.rb",
    "lib/services/checkout_session_service.rb",
    "lib/services/merchant_service.rb",
    "lib/services/payment_intent_service.rb",
    "lib/services/payment_method_service.rb",
    "lib/services/refund_service.rb",
    "lib/services/webhook_service.rb",
    "lib/services/service_factory.rb"
  ]
  s.homepage    = "https://www.payrexhq.com/"
  s.license     = "MIT"
end
