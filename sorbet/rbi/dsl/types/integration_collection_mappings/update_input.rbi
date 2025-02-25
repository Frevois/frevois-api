# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Types::IntegrationCollectionMappings::UpdateInput`.
# Please instead update this file by running `bin/tapioca dsl Types::IntegrationCollectionMappings::UpdateInput`.


class Types::IntegrationCollectionMappings::UpdateInput
  sig { returns(T.nilable(::String)) }
  def external_account_code; end

  sig { returns(T.nilable(::String)) }
  def external_id; end

  sig { returns(T.nilable(::String)) }
  def external_name; end

  sig { returns(::String) }
  def id; end

  sig { returns(T.nilable(::String)) }
  def integration_id; end

  sig { returns(T.nilable(::String)) }
  def mapping_type; end

  sig { returns(T.nilable(::String)) }
  def tax_code; end

  sig { returns(T.nilable(::String)) }
  def tax_nexus; end

  sig { returns(T.nilable(::String)) }
  def tax_type; end
end
