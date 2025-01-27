# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `SendWebhookJob`.
# Please instead update this file by running `bin/tapioca dsl SendWebhookJob`.


class SendWebhookJob
  class << self
    sig do
      params(
        webhook_type: T.untyped,
        object: T.untyped,
        options: T.untyped,
        webhook_id: T.untyped,
        block: T.nilable(T.proc.params(job: SendWebhookJob).void)
      ).returns(T.any(SendWebhookJob, FalseClass))
    end
    def perform_later(webhook_type, object, options = T.unsafe(nil), webhook_id = T.unsafe(nil), &block); end

    sig do
      params(
        webhook_type: T.untyped,
        object: T.untyped,
        options: T.untyped,
        webhook_id: T.untyped
      ).returns(T.untyped)
    end
    def perform_now(webhook_type, object, options = T.unsafe(nil), webhook_id = T.unsafe(nil)); end
  end
end
