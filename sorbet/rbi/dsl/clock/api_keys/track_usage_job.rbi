# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Clock::ApiKeys::TrackUsageJob`.
# Please instead update this file by running `bin/tapioca dsl Clock::ApiKeys::TrackUsageJob`.


class Clock::ApiKeys::TrackUsageJob
  class << self
    sig do
      params(
        block: T.nilable(T.proc.params(job: Clock::ApiKeys::TrackUsageJob).void)
      ).returns(T.any(Clock::ApiKeys::TrackUsageJob, FalseClass))
    end
    def perform_later(&block); end

    sig { returns(T.untyped) }
    def perform_now; end
  end
end
