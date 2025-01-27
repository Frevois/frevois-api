# frozen_string_literal: true

RSpec.shared_examples "requires API permission" do |resource, mode|
  describe "permissions" do
    let(:api_key) { organization.api_keys.first }

    before do
      api_key.update!(permissions: api_key.permissions.merge(resource => modes))
      subject
    end

    context "when organization has 'api_permissions' premium integration" do
      context "when API key allows #{mode} action for #{resource}" do
        let(:modes) { [ApiKey::MODES, [mode]].sample }

        it "does not return 403 Forbidden" do
          expect(response).not_to have_http_status(:forbidden)
        end
      end

      context "when API key forbids #{mode} action for #{resource}" do
        let(:modes) { ApiKey::MODES.excluding(mode) }

        it "returns 403 Forbidden" do
          aggregate_failures do
            expect(response).to have_http_status(:forbidden)
            expect(json).to match hash_including(code: "#{mode}_action_not_allowed_for_#{resource}")
          end
        end
      end
    end
  end
end
