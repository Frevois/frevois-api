# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Types::PaymentProviders::AdyenInput`.
# Please instead update this file by running `bin/tapioca dsl Types::PaymentProviders::AdyenInput`.


class Types::PaymentProviders::AdyenInput
  sig { returns(::String) }
  def api_key; end

  sig { returns(::String) }
  def code; end

  sig { returns(T.nilable(::String)) }
  def hmac_key; end

  sig { returns(T.nilable(::String)) }
  def live_prefix; end

  sig { returns(::String) }
  def merchant_account; end

  sig { returns(::String) }
  def name; end

  sig { returns(T.nilable(::String)) }
  def success_redirect_url; end
end
