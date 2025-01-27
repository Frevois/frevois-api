# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Types::ApiKeys::UpdateInput`.
# Please instead update this file by running `bin/tapioca dsl Types::ApiKeys::UpdateInput`.


class Types::ApiKeys::UpdateInput
  sig { returns(::String) }
  def id; end

  sig { returns(T.nilable(::String)) }
  def name; end

  sig { returns(T.nilable(T::Hash[::String, T.untyped])) }
  def permissions; end
end
