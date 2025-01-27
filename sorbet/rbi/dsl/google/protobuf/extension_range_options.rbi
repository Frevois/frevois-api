# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Protobuf::ExtensionRangeOptions`.
# Please instead update this file by running `bin/tapioca dsl Google::Protobuf::ExtensionRangeOptions`.


class Google::Protobuf::ExtensionRangeOptions < Google::Protobuf::AbstractMessage
  sig do
    params(
      declaration: T.nilable(T.any(Google::Protobuf::RepeatedField[Google::Protobuf::ExtensionRangeOptions::Declaration], T::Array[Google::Protobuf::ExtensionRangeOptions::Declaration])),
      features: T.nilable(Google::Protobuf::FeatureSet),
      uninterpreted_option: T.nilable(T.any(Google::Protobuf::RepeatedField[Google::Protobuf::UninterpretedOption], T::Array[Google::Protobuf::UninterpretedOption])),
      verification: T.nilable(T.any(Symbol, Integer))
    ).void
  end
  def initialize(declaration: T.unsafe(nil), features: nil, uninterpreted_option: T.unsafe(nil), verification: nil); end

  sig { void }
  def clear_declaration; end

  sig { void }
  def clear_features; end

  sig { void }
  def clear_uninterpreted_option; end

  sig { void }
  def clear_verification; end

  sig { returns(Google::Protobuf::RepeatedField[Google::Protobuf::ExtensionRangeOptions::Declaration]) }
  def declaration; end

  sig { params(value: Google::Protobuf::RepeatedField[Google::Protobuf::ExtensionRangeOptions::Declaration]).void }
  def declaration=(value); end

  sig { returns(T.nilable(Google::Protobuf::FeatureSet)) }
  def features; end

  sig { params(value: T.nilable(Google::Protobuf::FeatureSet)).void }
  def features=(value); end

  sig { returns(Object) }
  def has_features?; end

  sig { returns(Object) }
  def has_verification?; end

  sig { returns(Google::Protobuf::RepeatedField[Google::Protobuf::UninterpretedOption]) }
  def uninterpreted_option; end

  sig { params(value: Google::Protobuf::RepeatedField[Google::Protobuf::UninterpretedOption]).void }
  def uninterpreted_option=(value); end

  sig { returns(T.any(Symbol, Integer)) }
  def verification; end

  sig { params(value: T.any(Symbol, Integer)).void }
  def verification=(value); end
end
