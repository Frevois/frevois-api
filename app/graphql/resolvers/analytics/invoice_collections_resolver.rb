# frozen_string_literal: true

module Resolvers
  module Analytics
    class InvoiceCollectionsResolver < Resolvers::BaseResolver
      include AuthenticableApiUser
      include RequiredOrganization

      REQUIRED_PERMISSION = 'analytics:view'

      description 'Query invoice collections of an organization'

      argument :currency, Types::CurrencyEnum, required: false

      type Types::Analytics::InvoiceCollections::Object.collection_type, null: false

      def resolve(**args)
        ::Analytics::InvoiceCollection.find_all_by(current_organization.id, **args.merge(months: 12))
      end
    end
  end
end
