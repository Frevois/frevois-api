# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Types::Wallets::UpdateInput`.
# Please instead update this file by running `bin/tapioca dsl Types::Wallets::UpdateInput`.


class Types::Wallets::UpdateInput
  sig { returns(T.nilable(::Time)) }
  def expiration_at; end

  sig { returns(::String) }
  def id; end

  sig { returns(T.nilable(T::Boolean)) }
  def invoice_requires_successful_payment; end

  sig { returns(T.nilable(::String)) }
  def name; end

  sig { returns(T.nilable(T::Array[::Types::Wallets::RecurringTransactionRules::UpdateInput])) }
  def recurring_transaction_rules; end
end
