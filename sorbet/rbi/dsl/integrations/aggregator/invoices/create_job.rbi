# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Integrations::Aggregator::Invoices::CreateJob`.
# Please instead update this file by running `bin/tapioca dsl Integrations::Aggregator::Invoices::CreateJob`.


class Integrations::Aggregator::Invoices::CreateJob
  class << self
    sig do
      params(
        invoice: T.untyped,
        block: T.nilable(T.proc.params(job: Integrations::Aggregator::Invoices::CreateJob).void)
      ).returns(T.any(Integrations::Aggregator::Invoices::CreateJob, FalseClass))
    end
    def perform_later(invoice:, &block); end

    sig { params(invoice: T.untyped).returns(T.untyped) }
    def perform_now(invoice:); end
  end
end
