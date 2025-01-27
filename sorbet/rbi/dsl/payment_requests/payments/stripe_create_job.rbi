# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `PaymentRequests::Payments::StripeCreateJob`.
# Please instead update this file by running `bin/tapioca dsl PaymentRequests::Payments::StripeCreateJob`.


class PaymentRequests::Payments::StripeCreateJob
  class << self
    sig do
      params(
        payable: T.untyped,
        block: T.nilable(T.proc.params(job: PaymentRequests::Payments::StripeCreateJob).void)
      ).returns(T.any(PaymentRequests::Payments::StripeCreateJob, FalseClass))
    end
    def perform_later(payable, &block); end

    sig { params(payable: T.untyped).returns(T.untyped) }
    def perform_now(payable); end
  end
end
