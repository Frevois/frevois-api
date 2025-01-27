# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApiKeys::CreateService, type: :service do
  describe '#call' do
    subject(:service_result) { described_class.call(params) }

    let(:name) { Faker::Lorem.words.join(' ') }
    let(:organization) { create(:organization) }

    context 'with premium organization' do
        context 'when permissions hash is provided' do
        let(:params) { {permissions:, name:, organization:} }
        let(:permissions) { ApiKey.default_permissions }

        context 'when organization has api permissions addon' do
          it 'creates a new API key' do
            expect { service_result }.to change(ApiKey, :count).by(1)
          end

          it 'sends an API key created email' do
            expect { service_result }
              .to have_enqueued_mail(ApiKeyMailer, :created)
              .with(hash_including(params: {api_key: instance_of(ApiKey)}))
          end
        end
      end

      context 'when permissions hash is missing' do
        let(:params) { {name:, organization:} }

        context 'when organization has api permissions addon' do
          it 'creates a new API key' do
            expect { service_result }.to change(ApiKey, :count).by(1)
          end

          it 'sends an API key created email' do
            expect { service_result }
              .to have_enqueued_mail(ApiKeyMailer, :created)
              .with(hash_including(params: {api_key: instance_of(ApiKey)}))
          end
        end
      end
    end
  end
end
