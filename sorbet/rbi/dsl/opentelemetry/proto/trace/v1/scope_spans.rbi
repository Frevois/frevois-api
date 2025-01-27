# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Opentelemetry::Proto::Trace::V1::ScopeSpans`.
# Please instead update this file by running `bin/tapioca dsl Opentelemetry::Proto::Trace::V1::ScopeSpans`.


class Opentelemetry::Proto::Trace::V1::ScopeSpans < Google::Protobuf::AbstractMessage
  sig do
    params(
      schema_url: T.nilable(String),
      scope: T.nilable(Opentelemetry::Proto::Common::V1::InstrumentationScope),
      spans: T.nilable(T.any(Google::Protobuf::RepeatedField[Opentelemetry::Proto::Trace::V1::Span], T::Array[Opentelemetry::Proto::Trace::V1::Span]))
    ).void
  end
  def initialize(schema_url: nil, scope: nil, spans: T.unsafe(nil)); end

  sig { void }
  def clear_schema_url; end

  sig { void }
  def clear_scope; end

  sig { void }
  def clear_spans; end

  sig { returns(Object) }
  def has_scope?; end

  sig { returns(String) }
  def schema_url; end

  sig { params(value: String).void }
  def schema_url=(value); end

  sig { returns(T.nilable(Opentelemetry::Proto::Common::V1::InstrumentationScope)) }
  def scope; end

  sig { params(value: T.nilable(Opentelemetry::Proto::Common::V1::InstrumentationScope)).void }
  def scope=(value); end

  sig { returns(Google::Protobuf::RepeatedField[Opentelemetry::Proto::Trace::V1::Span]) }
  def spans; end

  sig { params(value: Google::Protobuf::RepeatedField[Opentelemetry::Proto::Trace::V1::Span]).void }
  def spans=(value); end
end
