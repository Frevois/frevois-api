# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Types::Subscriptions::UpdateSubscriptionInput`.
# Please instead update this file by running `bin/tapioca dsl Types::Subscriptions::UpdateSubscriptionInput`.


class Types::Subscriptions::UpdateSubscriptionInput
  sig { returns(T.nilable(::Time)) }
  def ending_at; end

  sig { returns(::String) }
  def id; end

  sig { returns(T.nilable(::String)) }
  def name; end

  sig { returns(T.nilable(::Types::Subscriptions::PlanOverridesInput)) }
  def plan_overrides; end

  sig { returns(T.nilable(::Time)) }
  def subscription_at; end
end
