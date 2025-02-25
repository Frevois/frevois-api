# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Types::DataExports::Invoices::FiltersInput`.
# Please instead update this file by running `bin/tapioca dsl Types::DataExports::Invoices::FiltersInput`.


class Types::DataExports::Invoices::FiltersInput
  sig { returns(T.nilable(::Integer)) }
  def amount_from; end

  sig { returns(T.nilable(::Integer)) }
  def amount_to; end

  sig { returns(T.nilable(::String)) }
  def currency; end

  sig { returns(T.nilable(::String)) }
  def customer_external_id; end

  sig { returns(T.nilable(T::Array[::String])) }
  def invoice_type; end

  sig { returns(T.nilable(::Date)) }
  def issuing_date_from; end

  sig { returns(T.nilable(::Date)) }
  def issuing_date_to; end

  sig { returns(T.nilable(T::Boolean)) }
  def payment_dispute_lost; end

  sig { returns(T.nilable(T::Boolean)) }
  def payment_overdue; end

  sig { returns(T.nilable(T::Array[::String])) }
  def payment_status; end

  sig { returns(T.nilable(::String)) }
  def search_term; end

  sig { returns(T.nilable(T::Array[::String])) }
  def status; end
end
