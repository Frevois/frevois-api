# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApiKeys::UpdateService do
  subject(:service_result) { described_class.call(api_key:, params:) }

  let(:name) { Faker::Lorem.words.join(' ') }

  context 'when API key is provided' do
    let!(:api_key) { create(:api_key) }
    let(:organization) { api_key.organization }

    context 'when permissions hash is provided' do
      let(:params) { {permissions:, name:} }
      let(:permissions) { api_key.permissions.merge("add_on" => ['read']) }

      context 'when organization has api permissions addon' do
        it 'updates the API key' do
          expect { service_result }.to change { api_key.reload.permissions }.to(permissions)
        end
      end
    end

    context 'when permissions hash is missing' do
      let(:params) { {name:} }

      context 'when organization has api permissions addon' do
        it 'updates the API key' do
          expect { service_result }.to change(api_key, :name).to(name)
        end
      end
    end
  end

  context 'when API key is missing' do
    let(:api_key) { nil }
    let(:params) { {name:} }

    it 'returns an error' do
      aggregate_failures do
        expect(service_result).not_to be_success
        expect(service_result.error).to be_a(BaseService::NotFoundFailure)
        expect(service_result.error.error_code).to eq('api_key_not_found')
      end
    end
  end
end
