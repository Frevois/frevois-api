# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Subscriptions::TerminateJob`.
# Please instead update this file by running `bin/tapioca dsl Subscriptions::TerminateJob`.


class Subscriptions::TerminateJob
  class << self
    sig do
      params(
        subscription: T.untyped,
        timestamp: T.untyped,
        block: T.nilable(T.proc.params(job: Subscriptions::TerminateJob).void)
      ).returns(T.any(Subscriptions::TerminateJob, FalseClass))
    end
    def perform_later(subscription, timestamp, &block); end

    sig { params(subscription: T.untyped, timestamp: T.untyped).returns(T.untyped) }
    def perform_now(subscription, timestamp); end
  end
end
