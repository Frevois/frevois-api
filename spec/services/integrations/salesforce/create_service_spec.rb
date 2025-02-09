# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Integrations::Salesforce::CreateService, type: :service do
  let(:membership) { create(:membership) }
  let(:organization) { membership.organization }

  describe '#call' do
    subject(:service_call) { described_class.call(params: create_args) }

    let(:name) { 'Salesforce 1' }

    let(:create_args) do
      {
        name:,
        code: 'salesforce',
        organization_id: organization.id,
        instance_id: 'Instance1'
      }
    end

    context 'with premium license' do
      context 'with salesforce premium integration present' do
        context 'without validation errors' do
          it 'creates an integration' do
            expect { service_call }.to change(Integrations::SalesforceIntegration, :count).by(1)

            integration = Integrations::SalesforceIntegration.order(:created_at).last
            expect(integration.instance_id).to eq('Instance1')
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
