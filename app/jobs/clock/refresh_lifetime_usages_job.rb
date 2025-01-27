# frozen_string_literal: true

module Clock
  class RefreshLifetimeUsagesJob < ApplicationJob
    include SentryCronConcern

    queue_as do
      if ActiveModel::Type::Boolean.new.cast(ENV['SIDEKIQ_CLOCK'])
        :clock_worker
      else
        :clock
      end
    end

    unique :until_executed, on_conflict: :log

    def perform
      LifetimeUsage.joins(:organization).needs_recalculation.find_each do |ltu|
        LifetimeUsages::RecalculateAndCheckJob.perform_later(ltu)
      end
    end
  end
end
