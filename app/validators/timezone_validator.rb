# frozen_string_literal: true

class TimezoneValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, :invalid_timezone) unless valid?(value)
  end

  protected

  def valid?(value)
    value && ActiveSupport::TimeZone[value].present?
  end
end
