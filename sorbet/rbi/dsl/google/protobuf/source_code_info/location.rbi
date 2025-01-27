# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Protobuf::SourceCodeInfo::Location`.
# Please instead update this file by running `bin/tapioca dsl Google::Protobuf::SourceCodeInfo::Location`.


class Google::Protobuf::SourceCodeInfo::Location < Google::Protobuf::AbstractMessage
  sig do
    params(
      leading_comments: T.nilable(String),
      leading_detached_comments: T.nilable(T.any(Google::Protobuf::RepeatedField[String], T::Array[String])),
      path: T.nilable(T.any(Google::Protobuf::RepeatedField[Integer], T::Array[Integer])),
      span: T.nilable(T.any(Google::Protobuf::RepeatedField[Integer], T::Array[Integer])),
      trailing_comments: T.nilable(String)
    ).void
  end
  def initialize(leading_comments: nil, leading_detached_comments: T.unsafe(nil), path: T.unsafe(nil), span: T.unsafe(nil), trailing_comments: nil); end

  sig { void }
  def clear_leading_comments; end

  sig { void }
  def clear_leading_detached_comments; end

  sig { void }
  def clear_path; end

  sig { void }
  def clear_span; end

  sig { void }
  def clear_trailing_comments; end

  sig { returns(Object) }
  def has_leading_comments?; end

  sig { returns(Object) }
  def has_trailing_comments?; end

  sig { returns(String) }
  def leading_comments; end

  sig { params(value: String).void }
  def leading_comments=(value); end

  sig { returns(Google::Protobuf::RepeatedField[String]) }
  def leading_detached_comments; end

  sig { params(value: Google::Protobuf::RepeatedField[String]).void }
  def leading_detached_comments=(value); end

  sig { returns(Google::Protobuf::RepeatedField[Integer]) }
  def path; end

  sig { params(value: Google::Protobuf::RepeatedField[Integer]).void }
  def path=(value); end

  sig { returns(Google::Protobuf::RepeatedField[Integer]) }
  def span; end

  sig { params(value: Google::Protobuf::RepeatedField[Integer]).void }
  def span=(value); end

  sig { returns(String) }
  def trailing_comments; end

  sig { params(value: String).void }
  def trailing_comments=(value); end
end
