# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Invoices::UpdateFeesPaymentStatusJob`.
# Please instead update this file by running `bin/tapioca dsl Invoices::UpdateFeesPaymentStatusJob`.


class Invoices::UpdateFeesPaymentStatusJob
  class << self
    sig do
      params(
        invoice: T.untyped,
        block: T.nilable(T.proc.params(job: Invoices::UpdateFeesPaymentStatusJob).void)
      ).returns(T.any(Invoices::UpdateFeesPaymentStatusJob, FalseClass))
    end
    def perform_later(invoice, &block); end

    sig { params(invoice: T.untyped).returns(T.untyped) }
    def perform_now(invoice); end
  end
end
