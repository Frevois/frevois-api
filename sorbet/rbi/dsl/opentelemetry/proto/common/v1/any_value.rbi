# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Opentelemetry::Proto::Common::V1::AnyValue`.
# Please instead update this file by running `bin/tapioca dsl Opentelemetry::Proto::Common::V1::AnyValue`.


class Opentelemetry::Proto::Common::V1::AnyValue < Google::Protobuf::AbstractMessage
  sig do
    params(
      array_value: T.nilable(Opentelemetry::Proto::Common::V1::ArrayValue),
      bool_value: T.nilable(T::Boolean),
      bytes_value: T.nilable(String),
      double_value: T.nilable(Float),
      int_value: T.nilable(Integer),
      kvlist_value: T.nilable(Opentelemetry::Proto::Common::V1::KeyValueList),
      string_value: T.nilable(String)
    ).void
  end
  def initialize(array_value: nil, bool_value: nil, bytes_value: nil, double_value: nil, int_value: nil, kvlist_value: nil, string_value: nil); end

  sig { returns(T.nilable(Opentelemetry::Proto::Common::V1::ArrayValue)) }
  def array_value; end

  sig { params(value: T.nilable(Opentelemetry::Proto::Common::V1::ArrayValue)).void }
  def array_value=(value); end

  sig { returns(T::Boolean) }
  def bool_value; end

  sig { params(value: T::Boolean).void }
  def bool_value=(value); end

  sig { returns(String) }
  def bytes_value; end

  sig { params(value: String).void }
  def bytes_value=(value); end

  sig { void }
  def clear_array_value; end

  sig { void }
  def clear_bool_value; end

  sig { void }
  def clear_bytes_value; end

  sig { void }
  def clear_double_value; end

  sig { void }
  def clear_int_value; end

  sig { void }
  def clear_kvlist_value; end

  sig { void }
  def clear_string_value; end

  sig { returns(Float) }
  def double_value; end

  sig { params(value: Float).void }
  def double_value=(value); end

  sig { returns(Object) }
  def has_array_value?; end

  sig { returns(Object) }
  def has_bool_value?; end

  sig { returns(Object) }
  def has_bytes_value?; end

  sig { returns(Object) }
  def has_double_value?; end

  sig { returns(Object) }
  def has_int_value?; end

  sig { returns(Object) }
  def has_kvlist_value?; end

  sig { returns(Object) }
  def has_string_value?; end

  sig { returns(Integer) }
  def int_value; end

  sig { params(value: Integer).void }
  def int_value=(value); end

  sig { returns(T.nilable(Opentelemetry::Proto::Common::V1::KeyValueList)) }
  def kvlist_value; end

  sig { params(value: T.nilable(Opentelemetry::Proto::Common::V1::KeyValueList)).void }
  def kvlist_value=(value); end

  sig { returns(String) }
  def string_value; end

  sig { params(value: String).void }
  def string_value=(value); end

  sig { returns(T.nilable(Symbol)) }
  def value; end
end
