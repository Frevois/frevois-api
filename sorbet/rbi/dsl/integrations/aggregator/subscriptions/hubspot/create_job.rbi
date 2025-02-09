# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Integrations::Aggregator::Subscriptions::Hubspot::CreateJob`.
# Please instead update this file by running `bin/tapioca dsl Integrations::Aggregator::Subscriptions::Hubspot::CreateJob`.


class Integrations::Aggregator::Subscriptions::Hubspot::CreateJob
  class << self
    sig do
      params(
        subscription: T.untyped,
        block: T.nilable(T.proc.params(job: Integrations::Aggregator::Subscriptions::Hubspot::CreateJob).void)
      ).returns(T.any(Integrations::Aggregator::Subscriptions::Hubspot::CreateJob, FalseClass))
    end
    def perform_later(subscription:, &block); end

    sig { params(subscription: T.untyped).returns(T.untyped) }
    def perform_now(subscription:); end
  end
end
