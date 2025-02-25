# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Types::Integrations::Netsuite::UpdateInput`.
# Please instead update this file by running `bin/tapioca dsl Types::Integrations::Netsuite::UpdateInput`.


class Types::Integrations::Netsuite::UpdateInput
  sig { returns(T.nilable(::String)) }
  def account_id; end

  sig { returns(T.nilable(::String)) }
  def client_id; end

  sig { returns(T.nilable(::String)) }
  def client_secret; end

  sig { returns(T.nilable(::String)) }
  def code; end

  sig { returns(T.nilable(::String)) }
  def connection_id; end

  sig { returns(T.nilable(::String)) }
  def id; end

  sig { returns(T.nilable(::String)) }
  def name; end

  sig { returns(T.nilable(::String)) }
  def script_endpoint_url; end

  sig { returns(T.nilable(T::Boolean)) }
  def sync_credit_notes; end

  sig { returns(T.nilable(T::Boolean)) }
  def sync_invoices; end

  sig { returns(T.nilable(T::Boolean)) }
  def sync_payments; end

  sig { returns(T.nilable(::String)) }
  def token_id; end

  sig { returns(T.nilable(::String)) }
  def token_secret; end
end
