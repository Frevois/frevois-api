# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `SegmentIdentifyJob`.
# Please instead update this file by running `bin/tapioca dsl SegmentIdentifyJob`.


class SegmentIdentifyJob
  class << self
    sig do
      params(
        membership_id: T.untyped,
        block: T.nilable(T.proc.params(job: SegmentIdentifyJob).void)
      ).returns(T.any(SegmentIdentifyJob, FalseClass))
    end
    def perform_later(membership_id:, &block); end

    sig { params(membership_id: T.untyped).returns(T.untyped) }
    def perform_now(membership_id:); end
  end
end
