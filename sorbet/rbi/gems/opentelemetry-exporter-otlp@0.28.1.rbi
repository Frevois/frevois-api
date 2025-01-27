# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `opentelemetry-exporter-otlp` gem.
# Please instead update this file by running `bin/tapioca gem opentelemetry-exporter-otlp`.


# OpenTelemetry is an open source observability framework, providing a
# general-purpose API, SDK, and related tools required for the instrumentation
# of cloud-native software, frameworks, and libraries.
#
# The OpenTelemetry module provides global accessors for telemetry objects.
# See the documentation for the `opentelemetry-api` gem for details.
#
# source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/version.rb#7
module OpenTelemetry
  # source://opentelemetry-api/1.3.0/lib/opentelemetry.rb#36
  def error_handler; end

  # source://opentelemetry-api/1.3.0/lib/opentelemetry.rb#27
  def error_handler=(_arg0); end

  # source://opentelemetry-api/1.3.0/lib/opentelemetry.rb#44
  def handle_error(exception: T.unsafe(nil), message: T.unsafe(nil)); end

  # source://opentelemetry-api/1.3.0/lib/opentelemetry.rb#30
  def logger; end

  # source://opentelemetry-api/1.3.0/lib/opentelemetry.rb#27
  def logger=(_arg0); end

  # source://opentelemetry-api/1.3.0/lib/opentelemetry.rb#69
  def propagation; end

  # source://opentelemetry-api/1.3.0/lib/opentelemetry.rb#27
  def propagation=(_arg0); end

  # source://opentelemetry-api/1.3.0/lib/opentelemetry.rb#64
  def tracer_provider; end

  # source://opentelemetry-api/1.3.0/lib/opentelemetry.rb#52
  def tracer_provider=(provider); end
end

# source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/version.rb#8
module OpenTelemetry::Exporter; end

# source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/version.rb#9
module OpenTelemetry::Exporter::OTLP; end

# An OpenTelemetry trace exporter that sends spans over HTTP as Protobuf encoded OTLP ExportTraceServiceRequests.
#
# source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#23
class OpenTelemetry::Exporter::OTLP::Exporter
  # @raise [ArgumentError]
  # @return [Exporter] a new instance of Exporter
  #
  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#49
  def initialize(endpoint: T.unsafe(nil), certificate_file: T.unsafe(nil), ssl_verify_mode: T.unsafe(nil), headers: T.unsafe(nil), compression: T.unsafe(nil), timeout: T.unsafe(nil), metrics_reporter: T.unsafe(nil)); end

  # Called to export sampled {OpenTelemetry::SDK::Trace::SpanData} structs.
  #
  # @param span_data [Enumerable<OpenTelemetry::SDK::Trace::SpanData>] the
  #   list of recorded {OpenTelemetry::SDK::Trace::SpanData} structs to be
  #   exported.
  # @param timeout [optional Numeric] An optional timeout in seconds.
  # @return [Integer] the result of the export.
  #
  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#77
  def export(span_data, timeout: T.unsafe(nil)); end

  # Called when {OpenTelemetry::SDK::Trace::TracerProvider#force_flush} is called, if
  # this exporter is registered to a {OpenTelemetry::SDK::Trace::TracerProvider}
  # object.
  #
  # @param timeout [optional Numeric] An optional timeout in seconds.
  #
  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#88
  def force_flush(timeout: T.unsafe(nil)); end

  # Called when {OpenTelemetry::SDK::Trace::TracerProvider#shutdown} is called, if
  # this exporter is registered to a {OpenTelemetry::SDK::Trace::TracerProvider}
  # object.
  #
  # @param timeout [optional Numeric] An optional timeout in seconds.
  #
  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#97
  def shutdown(timeout: T.unsafe(nil)); end

  private

  # The around_request is a private method that provides an extension
  # point for the exporters network calls. The default behaviour
  # is to not trace these operations.
  #
  # An example use case would be to prepend a patch, or extend this class
  # and override this method's behaviour to explicitly trace the HTTP request.
  # This would allow you to trace your export pipeline.
  #
  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#121
  def around_request; end

  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#377
  def as_otlp_any_value(value); end

  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#369
  def as_otlp_key_value(key, value); end

  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#310
  def as_otlp_span(span_data); end

  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#358
  def as_otlp_span_kind(kind); end

  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#350
  def as_otlp_status_code(code); end

  # @return [Boolean]
  #
  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#248
  def backoff?(retry_count:, reason:, retry_after: T.unsafe(nil)); end

  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#274
  def encode(span_data); end

  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#215
  def handle_redirect(location); end

  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#105
  def http_connection(uri, ssl_verify_mode, certificate_file); end

  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#230
  def log_request_failure(response_code); end

  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#219
  def log_status(body); end

  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#235
  def measure_request_duration; end

  # @raise [ArgumentError]
  #
  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#423
  def parse_headers(raw); end

  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#395
  def prepare_endpoint(endpoint); end

  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#410
  def prepare_headers(config_headers); end

  # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#125
  def send_bytes(bytes, timeout:); end

  class << self
    # source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#39
    def ssl_verify_mode; end
  end
end

# source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#37
OpenTelemetry::Exporter::OTLP::Exporter::DEFAULT_USER_AGENT = T.let(T.unsafe(nil), String)

# source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#34
OpenTelemetry::Exporter::OTLP::Exporter::ERROR_MESSAGE_INVALID_HEADERS = T.let(T.unsafe(nil), String)

# source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#25
OpenTelemetry::Exporter::OTLP::Exporter::FAILURE = T.let(T.unsafe(nil), Integer)

# Default timeouts in seconds.
#
# source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#29
OpenTelemetry::Exporter::OTLP::Exporter::KEEP_ALIVE_TIMEOUT = T.let(T.unsafe(nil), Integer)

# source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#30
OpenTelemetry::Exporter::OTLP::Exporter::RETRY_COUNT = T.let(T.unsafe(nil), Integer)

# source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#24
OpenTelemetry::Exporter::OTLP::Exporter::SUCCESS = T.let(T.unsafe(nil), Integer)

# source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/exporter.rb#31
OpenTelemetry::Exporter::OTLP::Exporter::WRITE_TIMEOUT_SUPPORTED = T.let(T.unsafe(nil), TrueClass)

# Current OpenTelemetry OTLP exporter version
#
# source://opentelemetry-exporter-otlp//lib/opentelemetry/exporter/otlp/version.rb#11
OpenTelemetry::Exporter::OTLP::VERSION = T.let(T.unsafe(nil), String)

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/common/v1/common_pb.rb#13
module Opentelemetry; end

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/common/v1/common_pb.rb#14
module Opentelemetry::Proto; end

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/collector/trace/v1/trace_service_pb.rb#17
module Opentelemetry::Proto::Collector; end

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/collector/trace/v1/trace_service_pb.rb#18
module Opentelemetry::Proto::Collector::Trace; end

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/collector/trace/v1/trace_service_pb.rb#19
module Opentelemetry::Proto::Collector::Trace::V1; end

class Opentelemetry::Proto::Collector::Trace::V1::ExportTracePartialSuccess < ::Google::Protobuf::AbstractMessage; end
class Opentelemetry::Proto::Collector::Trace::V1::ExportTraceServiceRequest < ::Google::Protobuf::AbstractMessage; end
class Opentelemetry::Proto::Collector::Trace::V1::ExportTraceServiceResponse < ::Google::Protobuf::AbstractMessage; end

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/common/v1/common_pb.rb#15
module Opentelemetry::Proto::Common; end

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/common/v1/common_pb.rb#16
module Opentelemetry::Proto::Common::V1; end

class Opentelemetry::Proto::Common::V1::AnyValue < ::Google::Protobuf::AbstractMessage; end
class Opentelemetry::Proto::Common::V1::ArrayValue < ::Google::Protobuf::AbstractMessage; end
class Opentelemetry::Proto::Common::V1::InstrumentationScope < ::Google::Protobuf::AbstractMessage; end
class Opentelemetry::Proto::Common::V1::KeyValue < ::Google::Protobuf::AbstractMessage; end
class Opentelemetry::Proto::Common::V1::KeyValueList < ::Google::Protobuf::AbstractMessage; end

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/resource/v1/resource_pb.rb#17
module Opentelemetry::Proto::Resource; end

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/resource/v1/resource_pb.rb#18
module Opentelemetry::Proto::Resource::V1; end

class Opentelemetry::Proto::Resource::V1::Resource < ::Google::Protobuf::AbstractMessage; end

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/trace/v1/trace_pb.rb#18
module Opentelemetry::Proto::Trace; end

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/trace/v1/trace_pb.rb#19
module Opentelemetry::Proto::Trace::V1; end

class Opentelemetry::Proto::Trace::V1::ResourceSpans < ::Google::Protobuf::AbstractMessage; end
class Opentelemetry::Proto::Trace::V1::ScopeSpans < ::Google::Protobuf::AbstractMessage; end
class Opentelemetry::Proto::Trace::V1::Span < ::Google::Protobuf::AbstractMessage; end
class Opentelemetry::Proto::Trace::V1::Span::Event < ::Google::Protobuf::AbstractMessage; end
class Opentelemetry::Proto::Trace::V1::Span::Link < ::Google::Protobuf::AbstractMessage; end

module Opentelemetry::Proto::Trace::V1::Span::SpanKind
  class << self
    def descriptor; end
    def lookup(_arg0); end
    def resolve(_arg0); end
  end
end

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/trace/v1/trace_pb.rb#26
Opentelemetry::Proto::Trace::V1::Span::SpanKind::SPAN_KIND_CLIENT = T.let(T.unsafe(nil), Integer)

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/trace/v1/trace_pb.rb#26
Opentelemetry::Proto::Trace::V1::Span::SpanKind::SPAN_KIND_CONSUMER = T.let(T.unsafe(nil), Integer)

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/trace/v1/trace_pb.rb#26
Opentelemetry::Proto::Trace::V1::Span::SpanKind::SPAN_KIND_INTERNAL = T.let(T.unsafe(nil), Integer)

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/trace/v1/trace_pb.rb#26
Opentelemetry::Proto::Trace::V1::Span::SpanKind::SPAN_KIND_PRODUCER = T.let(T.unsafe(nil), Integer)

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/trace/v1/trace_pb.rb#26
Opentelemetry::Proto::Trace::V1::Span::SpanKind::SPAN_KIND_SERVER = T.let(T.unsafe(nil), Integer)

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/trace/v1/trace_pb.rb#26
Opentelemetry::Proto::Trace::V1::Span::SpanKind::SPAN_KIND_UNSPECIFIED = T.let(T.unsafe(nil), Integer)

class Opentelemetry::Proto::Trace::V1::Status < ::Google::Protobuf::AbstractMessage; end

module Opentelemetry::Proto::Trace::V1::Status::StatusCode
  class << self
    def descriptor; end
    def lookup(_arg0); end
    def resolve(_arg0); end
  end
end

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/trace/v1/trace_pb.rb#28
Opentelemetry::Proto::Trace::V1::Status::StatusCode::STATUS_CODE_ERROR = T.let(T.unsafe(nil), Integer)

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/trace/v1/trace_pb.rb#28
Opentelemetry::Proto::Trace::V1::Status::StatusCode::STATUS_CODE_OK = T.let(T.unsafe(nil), Integer)

# source://opentelemetry-exporter-otlp//lib/opentelemetry/proto/trace/v1/trace_pb.rb#28
Opentelemetry::Proto::Trace::V1::Status::StatusCode::STATUS_CODE_UNSET = T.let(T.unsafe(nil), Integer)

class Opentelemetry::Proto::Trace::V1::TracesData < ::Google::Protobuf::AbstractMessage; end
