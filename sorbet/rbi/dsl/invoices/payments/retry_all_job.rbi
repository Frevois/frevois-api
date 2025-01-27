# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Invoices::Payments::RetryAllJob`.
# Please instead update this file by running `bin/tapioca dsl Invoices::Payments::RetryAllJob`.


class Invoices::Payments::RetryAllJob
  class << self
    sig do
      params(
        organization_id: T.untyped,
        invoice_ids: T.untyped,
        block: T.nilable(T.proc.params(job: Invoices::Payments::RetryAllJob).void)
      ).returns(T.any(Invoices::Payments::RetryAllJob, FalseClass))
    end
    def perform_later(organization_id:, invoice_ids:, &block); end

    sig { params(organization_id: T.untyped, invoice_ids: T.untyped).returns(T.untyped) }
    def perform_now(organization_id:, invoice_ids:); end
  end
end
