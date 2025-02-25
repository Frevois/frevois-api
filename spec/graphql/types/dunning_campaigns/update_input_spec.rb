# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Types::DunningCampaigns::UpdateInput do
  subject { described_class }

  it { is_expected.to accept_argument(:id).of_type('ID!') }

  it { is_expected.to accept_argument(:applied_to_organization).of_type('Boolean') }
  it { is_expected.to accept_argument(:code).of_type('String') }
  it { is_expected.to accept_argument(:days_between_attempts).of_type('Int') }
  it { is_expected.to accept_argument(:description).of_type('String') }
  it { is_expected.to accept_argument(:max_attempts).of_type('Int') }
  it { is_expected.to accept_argument(:name).of_type('String') }
  it { is_expected.to accept_argument(:thresholds).of_type('[DunningCampaignThresholdInput!]') }
end
