# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Clock::WebhooksCleanupJob`.
# Please instead update this file by running `bin/tapioca dsl Clock::WebhooksCleanupJob`.


class Clock::WebhooksCleanupJob
  class << self
    sig do
      params(
        block: T.nilable(T.proc.params(job: Clock::WebhooksCleanupJob).void)
      ).returns(T.any(Clock::WebhooksCleanupJob, FalseClass))
    end
    def perform_later(&block); end

    sig { returns(T.untyped) }
    def perform_now; end
  end
end
