# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Protobuf::EnumDescriptorProto::EnumReservedRange`.
# Please instead update this file by running `bin/tapioca dsl Google::Protobuf::EnumDescriptorProto::EnumReservedRange`.


class Google::Protobuf::EnumDescriptorProto::EnumReservedRange < Google::Protobuf::AbstractMessage
  sig { params(end: T.nilable(Integer), start: T.nilable(Integer)).void }
  def initialize(end: nil, start: nil); end

  sig { void }
  def clear_end; end

  sig { void }
  def clear_start; end

  sig { returns(Integer) }
  def end; end

  sig { params(value: Integer).void }
  def end=(value); end

  sig { returns(Object) }
  def has_end?; end

  sig { returns(Object) }
  def has_start?; end

  sig { returns(Integer) }
  def start; end

  sig { params(value: Integer).void }
  def start=(value); end
end
