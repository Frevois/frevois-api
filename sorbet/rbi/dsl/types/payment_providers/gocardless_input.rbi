# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Types::PaymentProviders::GocardlessInput`.
# Please instead update this file by running `bin/tapioca dsl Types::PaymentProviders::GocardlessInput`.


class Types::PaymentProviders::GocardlessInput
  sig { returns(T.nilable(::String)) }
  def access_code; end

  sig { returns(::String) }
  def code; end

  sig { returns(::String) }
  def name; end

  sig { returns(T.nilable(::String)) }
  def success_redirect_url; end
end
