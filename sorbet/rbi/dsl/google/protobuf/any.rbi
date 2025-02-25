# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Protobuf::Any`.
# Please instead update this file by running `bin/tapioca dsl Google::Protobuf::Any`.


class Google::Protobuf::Any < Google::Protobuf::AbstractMessage
  sig { params(type_url: T.nilable(String), value: T.nilable(String)).void }
  def initialize(type_url: nil, value: nil); end

  sig { void }
  def clear_type_url; end

  sig { void }
  def clear_value; end

  sig { returns(String) }
  def type_url; end

  sig { params(value: String).void }
  def type_url=(value); end

  sig { returns(String) }
  def value; end

  sig { params(value: String).void }
  def value=(value); end
end
