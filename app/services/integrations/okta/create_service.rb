# frozen_string_literal: true

module Integrations
  module Okta
    class CreateService < BaseService
      def call(**args)
        organization = Organization.find_by(id: args[:organization_id])

        integration = Integrations::OktaIntegration.new(
          organization:,
          name: 'Okta Integration',
          code: 'okta',
          client_id: args[:client_id],
          client_secret: args[:client_secret],
          domain: args[:domain],
          organization_name: args[:organization_name]
        )

        integration.save!

        result.integration = integration
        result
      rescue ActiveRecord::RecordInvalid => e
        result.record_validation_failure!(record: e.record)
      end
    end
  end
end
