# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Invoices::PrepaidCreditJob`.
# Please instead update this file by running `bin/tapioca dsl Invoices::PrepaidCreditJob`.


class Invoices::PrepaidCreditJob
  class << self
    sig do
      params(
        invoice: T.untyped,
        block: T.nilable(T.proc.params(job: Invoices::PrepaidCreditJob).void)
      ).returns(T.any(Invoices::PrepaidCreditJob, FalseClass))
    end
    def perform_later(invoice, &block); end

    sig { params(invoice: T.untyped).returns(T.untyped) }
    def perform_now(invoice); end
  end
end
