# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Mutations::Auth::Google::AcceptInvite`.
# Please instead update this file by running `bin/tapioca dsl Mutations::Auth::Google::AcceptInvite`.


class Mutations::Auth::Google::AcceptInvite
  sig { params(code: ::String, invite_token: ::String).returns(T.untyped) }
  def resolve(code:, invite_token:); end
end
