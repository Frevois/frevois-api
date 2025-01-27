# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Organization, type: :model do
  subject(:organization) do
    described_class.new(
      name: 'PiedPiper',
      email: 'foo@bar.com',
      country: 'FR',
      invoice_footer: 'this is an invoice footer'
    )
  end

  it { is_expected.to have_many(:stripe_payment_providers) }
  it { is_expected.to have_many(:gocardless_payment_providers) }
  it { is_expected.to have_many(:adyen_payment_providers) }

  it { is_expected.to have_many(:api_keys) }
  it { is_expected.to have_many(:webhook_endpoints) }
  it { is_expected.to have_many(:webhooks).through(:webhook_endpoints) }
  it { is_expected.to have_many(:hubspot_integrations) }
  it { is_expected.to have_many(:netsuite_integrations) }
  it { is_expected.to have_many(:xero_integrations) }
  it { is_expected.to have_one(:salesforce_integration) }
  it { is_expected.to have_many(:data_exports) }
  it { is_expected.to have_many(:dunning_campaigns) }
  it { is_expected.to have_many(:daily_usages) }
  it { is_expected.to have_many(:invoice_custom_sections) }
  it { is_expected.to have_many(:invoice_custom_section_selections) }
  it { is_expected.to have_many(:selected_invoice_custom_sections) }

  it { is_expected.to have_one(:applied_dunning_campaign).conditions(applied_to_organization: true) }

  it { is_expected.to validate_inclusion_of(:default_currency).in_array(described_class.currency_list) }

  it 'sets the default value to true' do
    expect(organization.finalize_zero_amount_invoice).to eq true
  end

  it_behaves_like 'paper_trail traceable'

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(organization).to be_valid
    end

    it 'is not valid without name' do
      organization.name = nil

      expect(organization).not_to be_valid
    end

    it 'is invalid with invalid email' do
      organization.email = 'foo.bar'

      expect(organization).not_to be_valid
    end

    it 'is invalid with invalid country' do
      organization.country = 'ZWX'

      expect(organization).not_to be_valid

      organization.country = ''

      expect(organization).not_to be_valid
    end

    it 'validates the language code' do
      organization.document_locale = nil
      expect(organization).not_to be_valid

      organization.document_locale = 'en'
      expect(organization).to be_valid

      organization.document_locale = 'foo'
      expect(organization).not_to be_valid

      organization.document_locale = ''
      expect(organization).not_to be_valid
    end

    it 'is invalid with invalid invoice footer' do
      organization.invoice_footer = SecureRandom.alphanumeric(601)

      expect(organization).not_to be_valid
    end

    it 'is valid with logo' do
      organization.logo.attach(
        io: File.open(Rails.root.join('spec/factories/images/logo.png')),
        content_type: 'image/png',
        filename: 'logo'
      )

      expect(organization).to be_valid
    end

    it 'is invalid with too big logo' do
      organization.logo.attach(
        io: File.open(Rails.root.join('spec/factories/images/big_sized_logo.jpg')),
        content_type: 'image/jpeg',
        filename: 'logo'
      )

      expect(organization).not_to be_valid
    end

    it 'is invalid with unsupported logo content type' do
      organization.logo.attach(
        io: File.open(Rails.root.join('spec/factories/images/logo.gif')),
        content_type: 'image/gif',
        filename: 'logo'
      )

      expect(organization).not_to be_valid
    end

    it 'is invalid with invalid timezone' do
      organization.timezone = 'foo'

      expect(organization).not_to be_valid
    end

    it 'is valid with email_settings' do
      organization.email_settings = ['invoice.finalized', 'credit_note.created']

      expect(organization).to be_valid
    end

    it 'is invalid with non permitted email_settings value' do
      organization.email_settings = ['email.not_permitted']

      expect(organization).not_to be_valid
      expect(organization.errors.first.attribute).to eq(:email_settings)
      expect(organization.errors.first.type).to eq(:unsupported_value)
    end

    it 'dont allow finalize_zero_amount_invoice with null value' do
      expect(organization.finalize_zero_amount_invoice).to eq true
      organization.finalize_zero_amount_invoice = nil

      expect(organization).not_to be_valid
    end

    describe 'of hmac key uniqueness' do
      before { create(:organization) }

      it { is_expected.to validate_uniqueness_of(:hmac_key) }
    end

    describe 'of hmac key presence' do
      subject { organization }

      context 'with a new record' do
        let(:organization) { build(:organization) }

        it { is_expected.not_to validate_presence_of(:hmac_key) }
      end

      context 'with a persisted record' do
        let(:organization) { create(:organization) }

        it { is_expected.to validate_presence_of(:hmac_key) }
      end
    end
  end

  describe '#save' do
    subject { organization.save! }

    context 'with a new record' do
      let(:organization) { build(:organization) }
      let(:used_hmac_key) { create(:organization).hmac_key }
      let(:unique_hmac_key) { SecureRandom.uuid }

      before do
        allow(SecureRandom).to receive(:uuid).and_return(used_hmac_key, unique_hmac_key)
      end

      it 'sets document number prefix of organization' do
        subject

        expect(organization.document_number_prefix)
          .to eq "#{organization.name.first(3).upcase}-#{organization.id.last(4).upcase}"
      end

      it 'sets unique hmac key' do
        expect { subject }.to change(organization, :hmac_key).to unique_hmac_key
      end
    end

    context 'with a persisted record' do
      let(:organization) { create(:organization) }

      it 'does not change document number prefix of organization' do
        expect { subject }.not_to change(organization, :document_number_prefix)
      end

      it 'does not change the hmac key' do
        expect { subject }.not_to change(organization, :hmac_key)
      end
    end
  end

  describe "#reset_customers_last_dunning_campaign_attempt" do
    let(:last_dunning_campaign_attempt_at) { 1.day.ago }
    let(:campaign) { create(:dunning_campaign, organization:) }

    it "resets the last dunning campaign attempt for customers" do
      customer1 = create(:customer, organization:, last_dunning_campaign_attempt: 1, last_dunning_campaign_attempt_at:)
      customer2 = create(:customer, organization:, last_dunning_campaign_attempt: 1, last_dunning_campaign_attempt_at:, applied_dunning_campaign: campaign)

      expect { organization.reset_customers_last_dunning_campaign_attempt }
        .to change { customer1.reload.last_dunning_campaign_attempt }.from(1).to(0)
        .and change(customer1, :last_dunning_campaign_attempt_at).from(last_dunning_campaign_attempt_at).to(nil)
      expect(customer2.reload.last_dunning_campaign_attempt).to eq(1)
    end
  end

  describe '#admins' do
    subject { organization.admins }

    let(:organization) { create(:organization) }
    let(:scoped) { create(:membership, organization:).user }

    before do
      create(:membership)
      create(:membership, organization:, role: [:manager, :finance].sample)
    end

    it 'returns admins of the organization' do
      expect(subject).to contain_exactly scoped
    end
  end
end
