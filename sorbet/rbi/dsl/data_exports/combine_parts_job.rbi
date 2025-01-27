# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `DataExports::CombinePartsJob`.
# Please instead update this file by running `bin/tapioca dsl DataExports::CombinePartsJob`.


class DataExports::CombinePartsJob
  class << self
    sig do
      params(
        data_export: T.untyped,
        block: T.nilable(T.proc.params(job: DataExports::CombinePartsJob).void)
      ).returns(T.any(DataExports::CombinePartsJob, FalseClass))
    end
    def perform_later(data_export, &block); end

    sig { params(data_export: T.untyped).returns(T.untyped) }
    def perform_now(data_export); end
  end
end
