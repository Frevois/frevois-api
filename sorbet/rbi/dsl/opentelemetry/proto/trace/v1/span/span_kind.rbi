# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Opentelemetry::Proto::Trace::V1::Span::SpanKind`.
# Please instead update this file by running `bin/tapioca dsl Opentelemetry::Proto::Trace::V1::Span::SpanKind`.


module Opentelemetry::Proto::Trace::V1::Span::SpanKind
  class << self
    sig { returns(Google::Protobuf::EnumDescriptor) }
    def descriptor; end

    sig { params(number: Integer).returns(T.nilable(Symbol)) }
    def lookup(number); end

    sig { params(symbol: Symbol).returns(T.nilable(Integer)) }
    def resolve(symbol); end
  end
end

Opentelemetry::Proto::Trace::V1::Span::SpanKind::SPAN_KIND_CLIENT = 3
Opentelemetry::Proto::Trace::V1::Span::SpanKind::SPAN_KIND_CONSUMER = 5
Opentelemetry::Proto::Trace::V1::Span::SpanKind::SPAN_KIND_INTERNAL = 1
Opentelemetry::Proto::Trace::V1::Span::SpanKind::SPAN_KIND_PRODUCER = 4
Opentelemetry::Proto::Trace::V1::Span::SpanKind::SPAN_KIND_SERVER = 2
Opentelemetry::Proto::Trace::V1::Span::SpanKind::SPAN_KIND_UNSPECIFIED = 0
