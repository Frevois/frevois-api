# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Mutations::PasswordResets::Reset`.
# Please instead update this file by running `bin/tapioca dsl Mutations::PasswordResets::Reset`.


class Mutations::PasswordResets::Reset
  sig { params(new_password: ::String, token: ::String).returns(T.untyped) }
  def resolve(new_password:, token:); end
end
