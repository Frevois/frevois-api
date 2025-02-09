# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Types::Taxes::UpdateInput`.
# Please instead update this file by running `bin/tapioca dsl Types::Taxes::UpdateInput`.


class Types::Taxes::UpdateInput
  sig { returns(T.nilable(T::Boolean)) }
  def applied_to_organization; end

  sig { returns(T.nilable(::String)) }
  def code; end

  sig { returns(T.nilable(::String)) }
  def description; end

  sig { returns(::String) }
  def id; end

  sig { returns(T.nilable(::String)) }
  def name; end

  sig { returns(T.nilable(::Float)) }
  def rate; end
end
