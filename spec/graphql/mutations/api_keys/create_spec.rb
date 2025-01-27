# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Mutations::ApiKeys::Create, type: :graphql do
  subject(:result) do
    execute_graphql(
      current_user: membership.user,
      current_organization: membership.organization,
      permissions: required_permission,
      query:,
      variables: {input: {name:}}
    )
  end

  let(:query) do
    <<-GQL
      mutation($input: CreateApiKeyInput!) {
        createApiKey(input: $input) { id name value }
      }
    GQL
  end

  let(:required_permission) { 'developers:keys:manage' }
  let!(:membership) { create(:membership) }
  let(:name) { Faker::Lorem.word }

  it_behaves_like 'requires current user'
  it_behaves_like 'requires current organization'
  it_behaves_like 'requires permission', 'developers:keys:manage'

  context 'with premium organization' do
    it 'creates a new API key' do
      expect { result }.to change(ApiKey, :count).by(1)
    end

    it 'returns created API key' do
      api_key_response = result['data']['createApiKey']

      expect(api_key_response['name']).to eq(name)
    end
  end
end
