# Changelog

## [1.6.0] - 2025-05-30
- Add update payment endpoint.

## [1.5.0] - 2025-05-30

- Add list payout transactions endpoint.
- Add Payout and PayoutTransaction resources.

## [1.4.0] - 2025-05-15

- Add get payment by id endpoint.

## [1.3.0] - 2025-04-23

- Add customer session endpoints.

## [1.2.2] - 2025-04-23

- Add update support for refunds.

## [1.2.0] - 2025-02-11

- Add billing_details_collection support for checkout sessions.
- Add billing_details_collection support for billing statements.

## [1.1.0] - 2025-02-06

- Add statement_descriptor support for payment intents.
- Add statement_descriptor support for billing statements.

## [1.0.1] - 2024-10-02

- Add send billing statement via email endpoint.

## [1.0.0] - 2024-09-04

- Add billing statement endpoints
- Add customer endpoints

Breaking change
- Standardize the use of arrays in resources. The `payment_intent` attribute of CheckoutSession resource is now an array. Previously, this attribute is a PaymentIntent resource.

## [0.2.5] - 2024-07-30

- Add amount_capturable and amount_received for hold then capture partial amount support.

## [0.2.4] - 2024-07-24

- Finalize checkout session endpoints.
- Remove resource from entities. This is the standard implementation across all PayRex SDKs.

## [0.2.3] - 2024-07-23

- Remove the deprecated attribute for capture_type.

## [0.2.2] - 2024-07-22

- Introduce the payment_method_options attribute. This is used to override the behavior of the payment method attached to a payment intent.

## [0.2.1] - 2024-05-24

- Update error handling.

## [0.2.0] - 2024-05-09

- Add webhook parse_event method to verify webhook signature.

## [0.1.0] - 2024-05-06

- Initial alpha release.
