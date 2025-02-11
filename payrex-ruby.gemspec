Gem::Specification.new do |s|
  s.name        = "payrex-ruby"
  s.version     = "1.2.0"
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
    "lib/entities/deleted.rb",
    "lib/entities/listing.rb",
    "lib/entities/customer.rb",
    "lib/entities/billing_statement.rb",
    "lib/entities/billing_statement_line_item.rb",
    "lib/entities/payment_intent.rb",
    "lib/entities/refund.rb",
    "lib/entities/webhook.rb",
    "lib/errors/base_error.rb",
    "lib/errors/authentication_invalid_error.rb",
    "lib/errors/request_invalid_error.rb",
    "lib/errors/resource_not_found_error.rb",
    "lib/errors/signature_invalid_error.rb",
    "lib/errors/value_unexpected_error.rb",
    "lib/services/base_service.rb",
    "lib/services/checkout_sessions_service.rb",
    "lib/services/payment_intents_service.rb",
    "lib/services/customers_service.rb",
    "lib/services/billing_statements_service.rb",
    "lib/services/billing_statement_line_items_service.rb",
    "lib/services/refunds_service.rb",
    "lib/services/webhooks_service.rb",
    "lib/services/service_factory.rb"
  ]
  s.homepage    = "https://www.payrexhq.com/"
  s.license     = "MIT"
end
