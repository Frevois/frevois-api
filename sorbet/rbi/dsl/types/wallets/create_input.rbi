# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Types::Wallets::CreateInput`.
# Please instead update this file by running `bin/tapioca dsl Types::Wallets::CreateInput`.


class Types::Wallets::CreateInput
  sig { returns(::String) }
  def currency; end

  sig { returns(::String) }
  def customer_id; end

  sig { returns(T.nilable(::Time)) }
  def expiration_at; end

  sig { returns(::String) }
  def granted_credits; end

  sig { returns(T.nilable(T::Boolean)) }
  def invoice_requires_successful_payment; end

  sig { returns(T.nilable(::String)) }
  def name; end

  sig { returns(::String) }
  def paid_credits; end

  sig { returns(::String) }
  def rate_amount; end

  sig { returns(T.nilable(T::Array[::Types::Wallets::RecurringTransactionRules::CreateInput])) }
  def recurring_transaction_rules; end
end
