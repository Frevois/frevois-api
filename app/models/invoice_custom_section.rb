# frozen_string_literal: true

class InvoiceCustomSection < ApplicationRecord
  include Discard::Model
  self.discard_column = :deleted_at

  belongs_to :organization
  has_many :invoice_custom_section_selections, dependent: :destroy

  validates :name, presence: true
  validates :code,
    presence: true,
    uniqueness: {conditions: -> { where(deleted_at: nil) }, scope: :organization_id}

  default_scope -> { kept }

  def selected_for_organization?
    organization.selected_invoice_custom_sections.exists?(id: id)
  end
end

# == Schema Information
#
# Table name: invoice_custom_sections
#
#  id              :uuid             not null, primary key
#  name            :string           not null
#  code            :string           not null
#  description     :string
#  display_name    :string
#  details         :string
#  organization_id :uuid             not null
#  deleted_at      :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  idx_on_organization_id_deleted_at_225e3f789d               (organization_id,deleted_at)
#  index_invoice_custom_sections_on_organization_id           (organization_id)
#  index_invoice_custom_sections_on_organization_id_and_code  (organization_id,code) UNIQUE
#
