# frozen_string_literal: true

module Integrations
  module Hubspot
    module Invoices
      class DeployObjectService < Integrations::Aggregator::BaseService
        VERSION = 1

        def action_path
          "v1/hubspot/object"
        end

        def call
          return result unless integration.type == 'Integrations::HubspotIntegration'
          if integration.invoices_properties_version == VERSION && integration.invoices_object_type_id.present?
            return result
          end

          custom_object_result = Integrations::Aggregator::CustomObjectService.call(integration:, name: 'LagoInvoices')
          if custom_object_result.success?
            save_object_type_id(custom_object_result.custom_object&.objectTypeId)
            return result
          end

          throttle!(:hubspot)

          response = http_client.post_with_response(payload, headers)
          ActiveRecord::Base.transaction do
            save_object_type_id(response['objectTypeId'])
          end
          result.response = response
          result
        rescue LagoHttpClient::HttpError => e
          message = message(e)
          deliver_integration_error_webhook(integration:, code: 'integration_error', message:)
          result
        end

        private

        def save_object_type_id(object_type_id)
          integration.settings = integration.reload.settings
          integration.invoices_object_type_id = object_type_id
          integration.invoices_properties_version = VERSION
          integration.save!
        end

        def headers
          {
            'Provider-Config-Key' => 'hubspot',
            'Authorization' => "Bearer #{secret_key}",
            'Connection-Id' => integration.connection_id
          }
        end

        def payload
          {
            name: "LagoInvoices",
            description: "Invoices issued by Frevois billing engine",
            requiredProperties: [
              "lago_invoice_id"
            ],
            labels: {
              singular: "LagoInvoice",
              plural: "LagoInvoices"
            },
            primaryDisplayProperty: "lago_invoice_number",
            secondaryDisplayProperties: %w[lago_invoice_status lago_invoice_id],
            searchableProperties: %w[lago_invoice_number lago_invoice_id],
            properties: [
              {
                name: "lago_invoice_id",
                label: "Frevois Invoice Id",
                type: "string",
                fieldType: "text",
                hasUniqueValue: true,
                searchableInGlobalSearch: true
              },
              {
                name: "lago_invoice_number",
                label: "Frevois Invoice Number",
                type: "string",
                fieldType: "text",
                searchableInGlobalSearch: true
              },
              {
                name: "lago_invoice_issuing_date",
                label: "Frevois Invoice Issuing Date",
                type: "date",
                fieldType: "date"
              },
              {
                name: "lago_invoice_payment_due_date",
                label: "Frevois Invoice Payment Due Date",
                type: "date",
                fieldType: "date"
              },
              {
                name: "lago_invoice_payment_overdue",
                label: "Frevois Invoice Payment Overdue",
                groupName: "LagoInvoices",
                type: "bool",
                fieldType: "booleancheckbox",
                options: [
                  {
                    label: "True",
                    value: "true"
                  },
                  {
                    label: "False",
                    value: "false"
                  }
                ]
              },
              {
                name: "lago_invoice_type",
                label: "Frevois Invoice Type",
                type: "string",
                fieldType: "text"
              },
              {
                name: "lago_invoice_status",
                label: "Frevois Invoice Status",
                type: "string",
                fieldType: "text"
              },
              {
                name: "lago_invoice_payment_status",
                label: "Frevois Invoice Payment Status",
                type: "string",
                fieldType: "text"
              },
              {
                name: "lago_invoice_currency",
                label: "Frevois Invoice Currency",
                type: "string",
                fieldType: "text"
              },
              {
                name: "lago_invoice_total_amount",
                label: "Frevois Invoice Total Amount",
                type: "number",
                fieldType: "number"
              },
              {
                name: "lago_invoice_subtotal_excluding_taxes",
                label: "Frevois Invoice Subtotal Excluding Taxes",
                type: "number",
                fieldType: "number"
              },
              {
                name: "lago_invoice_file_url",
                label: "Frevois Invoice File URL",
                type: "string",
                fieldType: "file"
              }
            ],
            associatedObjects: %w[COMPANY CONTACT]
          }
        end
      end
    end
  end
end
