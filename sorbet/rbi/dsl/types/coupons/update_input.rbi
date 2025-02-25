# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Types::Coupons::UpdateInput`.
# Please instead update this file by running `bin/tapioca dsl Types::Coupons::UpdateInput`.


class Types::Coupons::UpdateInput
  sig { returns(T.nilable(::Integer)) }
  def amount_cents; end

  sig { returns(T.nilable(::String)) }
  def amount_currency; end

  sig { returns(T.nilable(::Types::Coupons::LimitationInput)) }
  def applies_to; end

  sig { returns(T.nilable(::String)) }
  def code; end

  sig { returns(::String) }
  def coupon_type; end

  sig { returns(T.nilable(::String)) }
  def description; end

  sig { returns(::String) }
  def expiration; end

  sig { returns(T.nilable(::Time)) }
  def expiration_at; end

  sig { returns(::String) }
  def frequency; end

  sig { returns(T.nilable(::Integer)) }
  def frequency_duration; end

  sig { returns(::String) }
  def id; end

  sig { returns(::String) }
  def name; end

  sig { returns(T.nilable(::Float)) }
  def percentage_rate; end

  sig { returns(T.nilable(T::Boolean)) }
  def reusable; end
end
