# frozen_string_literal: true

module ApiKeys
  class UpdateService < BaseService
    def initialize(api_key:, params:)
      @api_key = api_key
      @params = params
      super
    end

    def call
      return result.not_found_failure!(resource: 'api_key') unless api_key

      api_key.update!(params.slice(:name, :permissions))

      result.api_key = api_key
      result
    rescue ActiveRecord::RecordInvalid => e
      result.record_validation_failure!(record: e.record)
    end

    private

    attr_reader :api_key, :params
  end
end
