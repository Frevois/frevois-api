# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Integrations::Xero::CreateService, type: :service do
  let(:service) { described_class.new(membership.user) }
  let(:membership) { create(:membership) }
  let(:organization) { membership.organization }

  describe '#call' do
    subject(:service_call) { service.call(**create_args) }

    let(:name) { 'Xero 1' }

    let(:create_args) do
      {
        name:,
        code: 'xero1',
        organization_id: organization.id,
        connection_id: 'conn1'
      }
    end

    context 'with premium license' do
      context 'when xero premium integration is present' do
        context 'without validation errors' do
          it 'creates an integration' do
            expect { service_call }.to change(Integrations::XeroIntegration, :count).by(1)

            integration = Integrations::XeroIntegration.order(:created_at).last
            expect(integration.name).to eq(name)
          end

          it 'returns an integration in result object' do
            result = service_call

            expect(result.integration).to be_a(Integrations::XeroIntegration)
          end

          it 'calls Integrations::Aggregator::PerformSyncJob' do
            expect { service_call }.to have_enqueued_job(Integrations::Aggregator::PerformSyncJob)
          end
        end

        context 'with validation error' do
          let(:name) { nil }

          it 'returns an error' do
            result = service_call

            aggregate_failures do
              expect(result).not_to be_success
              expect(result.error).to be_a(BaseService::ValidationFailure)
              expect(result.error.messages[:name]).to eq(['value_is_mandatory'])
            end
          end
        end
      end
    end
  end
end
