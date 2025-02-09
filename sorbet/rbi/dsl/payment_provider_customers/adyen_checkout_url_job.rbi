# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `PaymentProviderCustomers::AdyenCheckoutUrlJob`.
# Please instead update this file by running `bin/tapioca dsl PaymentProviderCustomers::AdyenCheckoutUrlJob`.


class PaymentProviderCustomers::AdyenCheckoutUrlJob
  class << self
    sig do
      params(
        adyen_customer: T.untyped,
        block: T.nilable(T.proc.params(job: PaymentProviderCustomers::AdyenCheckoutUrlJob).void)
      ).returns(T.any(PaymentProviderCustomers::AdyenCheckoutUrlJob, FalseClass))
    end
    def perform_later(adyen_customer, &block); end

    sig { params(adyen_customer: T.untyped).returns(T.untyped) }
    def perform_now(adyen_customer); end
  end
end
