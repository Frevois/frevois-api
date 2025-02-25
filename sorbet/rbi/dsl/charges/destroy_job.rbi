# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Charges::DestroyJob`.
# Please instead update this file by running `bin/tapioca dsl Charges::DestroyJob`.


class Charges::DestroyJob
  class << self
    sig do
      params(
        charge: T.untyped,
        block: T.nilable(T.proc.params(job: Charges::DestroyJob).void)
      ).returns(T.any(Charges::DestroyJob, FalseClass))
    end
    def perform_later(charge:, &block); end

    sig { params(charge: T.untyped).returns(T.untyped) }
    def perform_now(charge:); end
  end
end
