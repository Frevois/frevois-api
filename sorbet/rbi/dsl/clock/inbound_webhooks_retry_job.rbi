# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Clock::InboundWebhooksRetryJob`.
# Please instead update this file by running `bin/tapioca dsl Clock::InboundWebhooksRetryJob`.


class Clock::InboundWebhooksRetryJob
  class << self
    sig do
      params(
        block: T.nilable(T.proc.params(job: Clock::InboundWebhooksRetryJob).void)
      ).returns(T.any(Clock::InboundWebhooksRetryJob, FalseClass))
    end
    def perform_later(&block); end

    sig { returns(T.untyped) }
    def perform_now; end
  end
end
