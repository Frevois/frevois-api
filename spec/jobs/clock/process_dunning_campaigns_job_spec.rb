# frozen_string_literal: true

require 'rails_helper'

describe Clock::ProcessDunningCampaignsJob, job: true do
  subject { described_class }

  describe '.perform' do
    context "when premium features are enabled" do
        it "queue a DunningCampaigns::ProcessDunningCampaignsJob" do
        described_class.perform_now
        expect(DunningCampaigns::BulkProcessJob).to have_been_enqueued
      end
    end
  end
end
