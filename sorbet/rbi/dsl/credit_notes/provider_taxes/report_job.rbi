# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `CreditNotes::ProviderTaxes::ReportJob`.
# Please instead update this file by running `bin/tapioca dsl CreditNotes::ProviderTaxes::ReportJob`.


class CreditNotes::ProviderTaxes::ReportJob
  class << self
    sig do
      params(
        credit_note: T.untyped,
        block: T.nilable(T.proc.params(job: CreditNotes::ProviderTaxes::ReportJob).void)
      ).returns(T.any(CreditNotes::ProviderTaxes::ReportJob, FalseClass))
    end
    def perform_later(credit_note:, &block); end

    sig { params(credit_note: T.untyped).returns(T.untyped) }
    def perform_now(credit_note:); end
  end
end
