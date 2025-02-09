# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Integrations::Hubspot::Contacts::DeployPropertiesJob`.
# Please instead update this file by running `bin/tapioca dsl Integrations::Hubspot::Contacts::DeployPropertiesJob`.


class Integrations::Hubspot::Contacts::DeployPropertiesJob
  class << self
    sig do
      params(
        integration: T.untyped,
        block: T.nilable(T.proc.params(job: Integrations::Hubspot::Contacts::DeployPropertiesJob).void)
      ).returns(T.any(Integrations::Hubspot::Contacts::DeployPropertiesJob, FalseClass))
    end
    def perform_later(integration:, &block); end

    sig { params(integration: T.untyped).returns(T.untyped) }
    def perform_now(integration:); end
  end
end
