# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Mutations::Auth::Okta::Authorize`.
# Please instead update this file by running `bin/tapioca dsl Mutations::Auth::Okta::Authorize`.


class Mutations::Auth::Okta::Authorize
  sig { params(email: ::String, invite_token: T.nilable(::String)).returns(T.untyped) }
  def resolve(email:, invite_token: T.unsafe(nil)); end
end
