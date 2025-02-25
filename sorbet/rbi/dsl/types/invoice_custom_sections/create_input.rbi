# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Types::InvoiceCustomSections::CreateInput`.
# Please instead update this file by running `bin/tapioca dsl Types::InvoiceCustomSections::CreateInput`.


class Types::InvoiceCustomSections::CreateInput
  sig { returns(::String) }
  def code; end

  sig { returns(T.nilable(::String)) }
  def description; end

  sig { returns(T.nilable(::String)) }
  def details; end

  sig { returns(T.nilable(::String)) }
  def display_name; end

  sig { returns(::String) }
  def name; end

  sig { returns(T.nilable(T::Boolean)) }
  def selected; end
end
