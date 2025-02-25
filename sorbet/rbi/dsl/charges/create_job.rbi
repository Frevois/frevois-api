# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Charges::CreateJob`.
# Please instead update this file by running `bin/tapioca dsl Charges::CreateJob`.


class Charges::CreateJob
  class << self
    sig do
      params(
        plan: T.untyped,
        params: T.untyped,
        block: T.nilable(T.proc.params(job: Charges::CreateJob).void)
      ).returns(T.any(Charges::CreateJob, FalseClass))
    end
    def perform_later(plan:, params:, &block); end

    sig { params(plan: T.untyped, params: T.untyped).returns(T.untyped) }
    def perform_now(plan:, params:); end
  end
end
