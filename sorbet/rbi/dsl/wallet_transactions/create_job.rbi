# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `WalletTransactions::CreateJob`.
# Please instead update this file by running `bin/tapioca dsl WalletTransactions::CreateJob`.


class WalletTransactions::CreateJob
  class << self
    sig do
      params(
        organization_id: T.untyped,
        params: T.untyped,
        block: T.nilable(T.proc.params(job: WalletTransactions::CreateJob).void)
      ).returns(T.any(WalletTransactions::CreateJob, FalseClass))
    end
    def perform_later(organization_id:, params:, &block); end

    sig { params(organization_id: T.untyped, params: T.untyped).returns(T.untyped) }
    def perform_now(organization_id:, params:); end
  end
end
