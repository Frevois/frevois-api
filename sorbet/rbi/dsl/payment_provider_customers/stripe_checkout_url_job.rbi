# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `PaymentProviderCustomers::StripeCheckoutUrlJob`.
# Please instead update this file by running `bin/tapioca dsl PaymentProviderCustomers::StripeCheckoutUrlJob`.


class PaymentProviderCustomers::StripeCheckoutUrlJob
  class << self
    sig do
      params(
        stripe_customer: T.untyped,
        block: T.nilable(T.proc.params(job: PaymentProviderCustomers::StripeCheckoutUrlJob).void)
      ).returns(T.any(PaymentProviderCustomers::StripeCheckoutUrlJob, FalseClass))
    end
    def perform_later(stripe_customer, &block); end

    sig { params(stripe_customer: T.untyped).returns(T.untyped) }
    def perform_now(stripe_customer); end
  end
end
