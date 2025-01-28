# frozen_string_literal: true

class DropPremiumIntegrations < ActiveRecord::Migration[8.0]
  def change
    safety_assured { remove_column :organizations, :premium_integrations } # rubocop:disable Rails/ReversibleMigration
  end
end
