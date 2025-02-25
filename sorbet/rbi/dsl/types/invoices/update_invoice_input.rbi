# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Types::Invoices::UpdateInvoiceInput`.
# Please instead update this file by running `bin/tapioca dsl Types::Invoices::UpdateInvoiceInput`.


class Types::Invoices::UpdateInvoiceInput
  sig { returns(::String) }
  def id; end

  sig { returns(T.nilable(T::Array[::Types::Invoices::Metadata::Input])) }
  def metadata; end

  sig { returns(T.nilable(::String)) }
  def payment_status; end
end
