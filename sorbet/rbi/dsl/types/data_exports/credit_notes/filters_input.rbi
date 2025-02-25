# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Types::DataExports::CreditNotes::FiltersInput`.
# Please instead update this file by running `bin/tapioca dsl Types::DataExports::CreditNotes::FiltersInput`.


class Types::DataExports::CreditNotes::FiltersInput
  sig { returns(T.nilable(::Integer)) }
  def amount_from; end

  sig { returns(T.nilable(::Integer)) }
  def amount_to; end

  sig { returns(T.nilable(T::Array[::String])) }
  def credit_status; end

  sig { returns(T.nilable(::String)) }
  def currency; end

  sig { returns(T.nilable(::String)) }
  def customer_external_id; end

  sig { returns(T.nilable(::String)) }
  def customer_id; end

  sig { returns(T.nilable(::String)) }
  def invoice_number; end

  sig { returns(T.nilable(::Date)) }
  def issuing_date_from; end

  sig { returns(T.nilable(::Date)) }
  def issuing_date_to; end

  sig { returns(T.nilable(T::Array[::String])) }
  def reason; end

  sig { returns(T.nilable(T::Array[::String])) }
  def refund_status; end

  sig { returns(T.nilable(::String)) }
  def search_term; end
end
