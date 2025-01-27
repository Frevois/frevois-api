# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Protobuf::MessageOptions`.
# Please instead update this file by running `bin/tapioca dsl Google::Protobuf::MessageOptions`.


class Google::Protobuf::MessageOptions < Google::Protobuf::AbstractMessage
  sig do
    params(
      deprecated: T.nilable(T::Boolean),
      deprecated_legacy_json_field_conflicts: T.nilable(T::Boolean),
      features: T.nilable(Google::Protobuf::FeatureSet),
      map_entry: T.nilable(T::Boolean),
      message_set_wire_format: T.nilable(T::Boolean),
      no_standard_descriptor_accessor: T.nilable(T::Boolean),
      uninterpreted_option: T.nilable(T.any(Google::Protobuf::RepeatedField[Google::Protobuf::UninterpretedOption], T::Array[Google::Protobuf::UninterpretedOption]))
    ).void
  end
  def initialize(deprecated: nil, deprecated_legacy_json_field_conflicts: nil, features: nil, map_entry: nil, message_set_wire_format: nil, no_standard_descriptor_accessor: nil, uninterpreted_option: T.unsafe(nil)); end

  sig { void }
  def clear_deprecated; end

  sig { void }
  def clear_deprecated_legacy_json_field_conflicts; end

  sig { void }
  def clear_features; end

  sig { void }
  def clear_map_entry; end

  sig { void }
  def clear_message_set_wire_format; end

  sig { void }
  def clear_no_standard_descriptor_accessor; end

  sig { void }
  def clear_uninterpreted_option; end

  sig { returns(T::Boolean) }
  def deprecated; end

  sig { params(value: T::Boolean).void }
  def deprecated=(value); end

  sig { returns(T::Boolean) }
  def deprecated_legacy_json_field_conflicts; end

  sig { params(value: T::Boolean).void }
  def deprecated_legacy_json_field_conflicts=(value); end

  sig { returns(T.nilable(Google::Protobuf::FeatureSet)) }
  def features; end

  sig { params(value: T.nilable(Google::Protobuf::FeatureSet)).void }
  def features=(value); end

  sig { returns(Object) }
  def has_deprecated?; end

  sig { returns(Object) }
  def has_deprecated_legacy_json_field_conflicts?; end

  sig { returns(Object) }
  def has_features?; end

  sig { returns(Object) }
  def has_map_entry?; end

  sig { returns(Object) }
  def has_message_set_wire_format?; end

  sig { returns(Object) }
  def has_no_standard_descriptor_accessor?; end

  sig { returns(T::Boolean) }
  def map_entry; end

  sig { params(value: T::Boolean).void }
  def map_entry=(value); end

  sig { returns(T::Boolean) }
  def message_set_wire_format; end

  sig { params(value: T::Boolean).void }
  def message_set_wire_format=(value); end

  sig { returns(T::Boolean) }
  def no_standard_descriptor_accessor; end

  sig { params(value: T::Boolean).void }
  def no_standard_descriptor_accessor=(value); end

  sig { returns(Google::Protobuf::RepeatedField[Google::Protobuf::UninterpretedOption]) }
  def uninterpreted_option; end

  sig { params(value: Google::Protobuf::RepeatedField[Google::Protobuf::UninterpretedOption]).void }
  def uninterpreted_option=(value); end
end
