# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Opentelemetry::Proto::Collector::Trace::V1::ExportTracePartialSuccess`.
# Please instead update this file by running `bin/tapioca dsl Opentelemetry::Proto::Collector::Trace::V1::ExportTracePartialSuccess`.


class Opentelemetry::Proto::Collector::Trace::V1::ExportTracePartialSuccess < Google::Protobuf::AbstractMessage
  sig { params(error_message: T.nilable(String), rejected_spans: T.nilable(Integer)).void }
  def initialize(error_message: nil, rejected_spans: nil); end

  sig { void }
  def clear_error_message; end

  sig { void }
  def clear_rejected_spans; end

  sig { returns(String) }
  def error_message; end

  sig { params(value: String).void }
  def error_message=(value); end

  sig { returns(Integer) }
  def rejected_spans; end

  sig { params(value: Integer).void }
  def rejected_spans=(value); end
end
