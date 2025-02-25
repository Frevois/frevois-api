# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `activejob-uniqueness` gem.
# Please instead update this file by running `bin/tapioca gem activejob-uniqueness`.


# source://activejob-uniqueness//lib/active_job/uniqueness/version.rb#3
module ActiveJob
  class << self
    # source://activejob/8.0.1/lib/active_job/queue_adapter.rb#7
    def adapter_name(adapter); end

    # source://activejob/8.0.1/lib/active_job/deprecator.rb#4
    def deprecator; end

    # source://activejob/8.0.1/lib/active_job/gem_version.rb#5
    def gem_version; end

    # source://activejob/8.0.1/lib/active_job/enqueuing.rb#14
    def perform_all_later(*jobs); end

    # source://activejob/8.0.1/lib/active_job.rb#57
    def verbose_enqueue_logs; end

    # source://activejob/8.0.1/lib/active_job.rb#57
    def verbose_enqueue_logs=(_arg0); end

    # source://activejob/8.0.1/lib/active_job/version.rb#7
    def version; end

    private

    # source://activejob/8.0.1/lib/active_job/instrumentation.rb#6
    def instrument_enqueue_all(queue_adapter, jobs); end
  end
end

class ActiveJob::Base
  # source://activejob-traceable/0.4.2/lib/activejob/traceable/traceable.rb#10
  def initialize(*args, **_arg1); end

  # source://activesupport/8.0.1/lib/active_support/callbacks.rb#69
  def __callbacks; end

  # source://activesupport/8.0.1/lib/active_support/callbacks.rb#923
  def _enqueue_callbacks; end

  # source://activesupport/8.0.1/lib/active_support/callbacks.rb#923
  def _perform_callbacks; end

  # source://activesupport/8.0.1/lib/active_support/callbacks.rb#911
  def _run_enqueue_callbacks(&block); end

  # source://activesupport/8.0.1/lib/active_support/callbacks.rb#911
  def _run_perform_callbacks(&block); end

  # source://activejob/8.0.1/lib/active_job/exceptions.rb#12
  def after_discard_procs; end

  # source://activejob/8.0.1/lib/active_job/exceptions.rb#12
  def after_discard_procs=(_arg0); end

  # source://activejob/8.0.1/lib/active_job/exceptions.rb#12
  def after_discard_procs?; end

  # source://activejob-traceable/0.4.2/lib/activejob/traceable/traceable.rb#22
  def deserialize(job_data); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#51
  def lock_options; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#51
  def lock_options?; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#50
  def lock_strategy_class; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#50
  def lock_strategy_class?; end

  # source://activejob/8.0.1/lib/active_job/logging.rb#15
  def logger; end

  # source://activejob/8.0.1/lib/active_job/logging.rb#15
  def logger=(val); end

  # source://activejob/8.0.1/lib/active_job/queue_adapter.rb#27
  def queue_adapter(&_arg0); end

  # source://activejob/8.0.1/lib/active_job/queue_name.rb#57
  def queue_name_prefix; end

  # source://activejob/8.0.1/lib/active_job/queue_name.rb#57
  def queue_name_prefix=(_arg0); end

  # source://activejob/8.0.1/lib/active_job/queue_name.rb#57
  def queue_name_prefix?; end

  # source://activesupport/8.0.1/lib/active_support/rescuable.rb#15
  def rescue_handlers; end

  # source://activesupport/8.0.1/lib/active_support/rescuable.rb#15
  def rescue_handlers=(_arg0); end

  # source://activesupport/8.0.1/lib/active_support/rescuable.rb#15
  def rescue_handlers?; end

  # source://activejob-traceable/0.4.2/lib/activejob/traceable/traceable.rb#17
  def serialize; end

  # source://sidekiq/7.3.8/lib/sidekiq/job.rb#141
  def sidekiq_options_hash; end

  # source://sidekiq/7.3.8/lib/sidekiq/job.rb#153
  def sidekiq_options_hash=(_arg0); end

  # source://sidekiq/7.3.8/lib/sidekiq/job.rb#141
  def sidekiq_retries_exhausted_block; end

  # source://sidekiq/7.3.8/lib/sidekiq/job.rb#153
  def sidekiq_retries_exhausted_block=(_arg0); end

  # source://sidekiq/7.3.8/lib/sidekiq/job.rb#141
  def sidekiq_retry_in_block; end

  # source://sidekiq/7.3.8/lib/sidekiq/job.rb#153
  def sidekiq_retry_in_block=(_arg0); end

  # source://activejob-traceable/0.4.2/lib/activejob/traceable/traceable.rb#8
  def tracing_info; end

  # source://activejob-traceable/0.4.2/lib/activejob/traceable/traceable.rb#8
  def tracing_info=(_arg0); end

  private

  # source://activejob-traceable/0.4.2/lib/activejob/traceable/logging_patch.rb#11
  def tag_logger(*tags); end

  class << self
    # source://activesupport/8.0.1/lib/active_support/callbacks.rb#69
    def __callbacks; end

    # source://activesupport/8.0.1/lib/active_support/callbacks.rb#69
    def __callbacks=(value); end

    # source://activesupport/8.0.1/lib/active_support/callbacks.rb#915
    def _enqueue_callbacks; end

    # source://activesupport/8.0.1/lib/active_support/callbacks.rb#919
    def _enqueue_callbacks=(value); end

    # source://activesupport/8.0.1/lib/active_support/callbacks.rb#915
    def _perform_callbacks; end

    # source://activesupport/8.0.1/lib/active_support/callbacks.rb#919
    def _perform_callbacks=(value); end

    # source://activejob/8.0.1/lib/active_job/queue_adapter.rb#25
    def _queue_adapter; end

    # source://activejob/8.0.1/lib/active_job/queue_adapter.rb#25
    def _queue_adapter=(value); end

    # source://activejob/8.0.1/lib/active_job/queue_adapter.rb#24
    def _queue_adapter_name; end

    # source://activejob/8.0.1/lib/active_job/queue_adapter.rb#24
    def _queue_adapter_name=(value); end

    # source://activejob/8.0.1/lib/active_job/test_helper.rb#19
    def _test_adapter; end

    # source://activejob/8.0.1/lib/active_job/test_helper.rb#19
    def _test_adapter=(value); end

    # source://activejob/8.0.1/lib/active_job/exceptions.rb#12
    def after_discard_procs; end

    # source://activejob/8.0.1/lib/active_job/exceptions.rb#12
    def after_discard_procs=(value); end

    # source://activejob/8.0.1/lib/active_job/exceptions.rb#12
    def after_discard_procs?; end

    # source://activejob/8.0.1/lib/active_job/enqueuing.rb#53
    def enqueue_after_transaction_commit; end

    # source://activejob/8.0.1/lib/active_job/enqueuing.rb#53
    def enqueue_after_transaction_commit=(value); end

    # source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#51
    def lock_options; end

    # source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#51
    def lock_options=(value); end

    # source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#51
    def lock_options?; end

    # source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#50
    def lock_strategy_class; end

    # source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#50
    def lock_strategy_class=(value); end

    # source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#50
    def lock_strategy_class?; end

    # source://activejob/8.0.1/lib/active_job/logging.rb#26
    def log_arguments; end

    # source://activejob/8.0.1/lib/active_job/logging.rb#26
    def log_arguments=(value); end

    # source://activejob/8.0.1/lib/active_job/logging.rb#26
    def log_arguments?; end

    # source://activejob/8.0.1/lib/active_job/logging.rb#15
    def logger; end

    # source://activejob/8.0.1/lib/active_job/logging.rb#15
    def logger=(val); end

    # source://activejob/8.0.1/lib/active_job/queue_priority.rb#49
    def priority; end

    # source://activejob/8.0.1/lib/active_job/queue_priority.rb#49
    def priority=(value); end

    # source://activejob/8.0.1/lib/active_job/queue_priority.rb#49
    def priority?; end

    # source://activejob/8.0.1/lib/active_job/queue_name.rb#55
    def queue_name; end

    # source://activejob/8.0.1/lib/active_job/queue_name.rb#55
    def queue_name=(value); end

    # source://activejob/8.0.1/lib/active_job/queue_name.rb#55
    def queue_name?; end

    # source://activejob/8.0.1/lib/active_job/queue_name.rb#56
    def queue_name_delimiter; end

    # source://activejob/8.0.1/lib/active_job/queue_name.rb#56
    def queue_name_delimiter=(value); end

    # source://activejob/8.0.1/lib/active_job/queue_name.rb#56
    def queue_name_delimiter?; end

    # source://activejob/8.0.1/lib/active_job/queue_name.rb#57
    def queue_name_prefix; end

    # source://activejob/8.0.1/lib/active_job/queue_name.rb#57
    def queue_name_prefix=(value); end

    # source://activejob/8.0.1/lib/active_job/queue_name.rb#57
    def queue_name_prefix?; end

    # source://activesupport/8.0.1/lib/active_support/rescuable.rb#15
    def rescue_handlers; end

    # source://activesupport/8.0.1/lib/active_support/rescuable.rb#15
    def rescue_handlers=(value); end

    # source://activesupport/8.0.1/lib/active_support/rescuable.rb#15
    def rescue_handlers?; end

    # source://activejob/8.0.1/lib/active_job/exceptions.rb#11
    def retry_jitter; end

    # source://activejob/8.0.1/lib/active_job/exceptions.rb#11
    def retry_jitter=(value); end

    # source://sidekiq/7.3.8/lib/sidekiq/job.rb#108
    def sidekiq_options_hash; end

    # source://sidekiq/7.3.8/lib/sidekiq/job.rb#116
    def sidekiq_options_hash=(val); end

    # source://sidekiq/7.3.8/lib/sidekiq/job.rb#108
    def sidekiq_retries_exhausted_block; end

    # source://sidekiq/7.3.8/lib/sidekiq/job.rb#116
    def sidekiq_retries_exhausted_block=(val); end

    # source://sidekiq/7.3.8/lib/sidekiq/job.rb#108
    def sidekiq_retry_in_block; end

    # source://sidekiq/7.3.8/lib/sidekiq/job.rb#116
    def sidekiq_retry_in_block=(val); end

    private

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#15
    def __class_attr___callbacks; end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#17
    def __class_attr___callbacks=(new_value); end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#15
    def __class_attr__queue_adapter; end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#17
    def __class_attr__queue_adapter=(new_value); end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#15
    def __class_attr__queue_adapter_name; end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#17
    def __class_attr__queue_adapter_name=(new_value); end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#15
    def __class_attr__test_adapter; end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#17
    def __class_attr__test_adapter=(new_value); end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#15
    def __class_attr_after_discard_procs; end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#17
    def __class_attr_after_discard_procs=(new_value); end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#15
    def __class_attr_enqueue_after_transaction_commit; end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#17
    def __class_attr_enqueue_after_transaction_commit=(new_value); end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#15
    def __class_attr_lock_options; end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#17
    def __class_attr_lock_options=(new_value); end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#15
    def __class_attr_lock_strategy_class; end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#17
    def __class_attr_lock_strategy_class=(new_value); end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#15
    def __class_attr_log_arguments; end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#17
    def __class_attr_log_arguments=(new_value); end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#15
    def __class_attr_priority; end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#17
    def __class_attr_priority=(new_value); end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#15
    def __class_attr_queue_name; end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#17
    def __class_attr_queue_name=(new_value); end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#15
    def __class_attr_queue_name_delimiter; end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#17
    def __class_attr_queue_name_delimiter=(new_value); end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#15
    def __class_attr_queue_name_prefix; end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#17
    def __class_attr_queue_name_prefix=(new_value); end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#15
    def __class_attr_rescue_handlers; end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#17
    def __class_attr_rescue_handlers=(new_value); end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#15
    def __class_attr_retry_jitter; end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#17
    def __class_attr_retry_jitter=(new_value); end

    # source://sidekiq/7.3.8/lib/sidekiq/job.rb#103
    def __synchronized_sidekiq_options_hash; end

    # source://sidekiq/7.3.8/lib/sidekiq/job.rb#103
    def __synchronized_sidekiq_retries_exhausted_block; end

    # source://sidekiq/7.3.8/lib/sidekiq/job.rb#103
    def __synchronized_sidekiq_retry_in_block; end
  end
end

# source://activejob-uniqueness//lib/active_job/uniqueness/version.rb#4
module ActiveJob::Uniqueness
  extend ::ActiveSupport::Autoload

  class << self
    # source://activejob-uniqueness//lib/active_job/uniqueness.rb#26
    def config; end

    # @yield [config]
    #
    # source://activejob-uniqueness//lib/active_job/uniqueness.rb#22
    def configure; end

    # source://activejob-uniqueness//lib/active_job/uniqueness.rb#30
    def lock_manager; end

    # source://activejob-uniqueness//lib/active_job/uniqueness.rb#42
    def reset_manager!; end

    # source://activejob-uniqueness//lib/active_job/uniqueness.rb#38
    def test_mode!; end

    # source://activejob-uniqueness//lib/active_job/uniqueness.rb#34
    def unlock!(**args); end

    # source://activejob-uniqueness//lib/active_job/uniqueness/sidekiq_patch.rb#8
    def unlock_sidekiq_job!(job_data); end
  end
end

# Provides ability to make ActiveJob job unique.
#
# For example:
#
# class FooJob < ActiveJob::Base
#   queue_as :foo
#
#   unique :until_executed, lock_ttl: 3.hours
#
#   def perform(params)
#     #...
#   end
# end
#
# source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#19
module ActiveJob::Uniqueness::ActiveJobPatch
  extend ::ActiveSupport::Concern
  include GeneratedInstanceMethods

  mixes_in_class_methods GeneratedClassMethods
  mixes_in_class_methods ::ActiveJob::Uniqueness::ActiveJobPatch::ClassMethods

  # source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#70
  def lock_key(*_arg0, **_arg1, &_arg2); end

  # Override in your job class if you want to customize arguments set for a digest.
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#65
  def lock_key_arguments; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#72
  def lock_key_generator; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#60
  def lock_strategy; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#70
  def runtime_lock_key(*_arg0, **_arg1, &_arg2); end

  module GeneratedClassMethods
    def lock_options; end
    def lock_options=(value); end
    def lock_options?; end
    def lock_strategy_class; end
    def lock_strategy_class=(value); end
    def lock_strategy_class?; end
  end

  module GeneratedInstanceMethods
    def lock_options; end
    def lock_options?; end
    def lock_strategy_class; end
    def lock_strategy_class?; end
  end
end

# source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#0
module ActiveJob::Uniqueness::ActiveJobPatch::ClassMethods
  # source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#27
  def unique(strategy, options = T.unsafe(nil)); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#38
  def unlock!(*arguments); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#44
  def validate_on_conflict_action!(*_arg0, **_arg1, &_arg2); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/active_job_patch.rb#44
  def validate_on_redis_connection_error!(*_arg0, **_arg1, &_arg2); end
end

# Use /config/initializer/activejob_uniqueness.rb to configure ActiveJob::Uniqueness
#
# ActiveJob::Uniqueness.configure do |c|
#   c.lock_ttl = 3.hours
# end
#
# source://activejob-uniqueness//lib/active_job/uniqueness/configuration.rb#11
class ActiveJob::Uniqueness::Configuration
  include ::ActiveSupport::Configurable
  extend ::ActiveSupport::Configurable::ClassMethods

  # source://activesupport/8.0.1/lib/active_support/configurable.rb#115
  def digest_method; end

  # source://activesupport/8.0.1/lib/active_support/configurable.rb#116
  def digest_method=(value); end

  # source://activesupport/8.0.1/lib/active_support/configurable.rb#115
  def lock_prefix; end

  # source://activesupport/8.0.1/lib/active_support/configurable.rb#116
  def lock_prefix=(value); end

  # source://activesupport/8.0.1/lib/active_support/configurable.rb#115
  def lock_strategies; end

  # source://activesupport/8.0.1/lib/active_support/configurable.rb#116
  def lock_strategies=(value); end

  # source://activesupport/8.0.1/lib/active_support/configurable.rb#115
  def lock_ttl; end

  # source://activesupport/8.0.1/lib/active_support/configurable.rb#116
  def lock_ttl=(value); end

  # source://activesupport/8.0.1/lib/active_support/configurable.rb#115
  def on_conflict; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/configuration.rb#27
  def on_conflict=(action); end

  # source://activesupport/8.0.1/lib/active_support/configurable.rb#115
  def on_redis_connection_error; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/configuration.rb#39
  def on_redis_connection_error=(action); end

  # source://activesupport/8.0.1/lib/active_support/configurable.rb#115
  def redlock_options; end

  # source://activesupport/8.0.1/lib/active_support/configurable.rb#116
  def redlock_options=(value); end

  # source://activesupport/8.0.1/lib/active_support/configurable.rb#115
  def redlock_servers; end

  # source://activesupport/8.0.1/lib/active_support/configurable.rb#116
  def redlock_servers=(value); end

  # @raise [ActiveJob::Uniqueness::InvalidOnConflictAction]
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/configuration.rb#33
  def validate_on_conflict_action!(action); end

  # @raise [ActiveJob::Uniqueness::InvalidOnConflictAction]
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/configuration.rb#45
  def validate_on_redis_connection_error!(action); end

  class << self
    # source://activesupport/8.0.1/lib/active_support/configurable.rb#115
    def digest_method; end

    # source://activesupport/8.0.1/lib/active_support/configurable.rb#116
    def digest_method=(value); end

    # source://activesupport/8.0.1/lib/active_support/configurable.rb#115
    def lock_prefix; end

    # source://activesupport/8.0.1/lib/active_support/configurable.rb#116
    def lock_prefix=(value); end

    # source://activesupport/8.0.1/lib/active_support/configurable.rb#115
    def lock_strategies; end

    # source://activesupport/8.0.1/lib/active_support/configurable.rb#116
    def lock_strategies=(value); end

    # source://activesupport/8.0.1/lib/active_support/configurable.rb#115
    def lock_ttl; end

    # source://activesupport/8.0.1/lib/active_support/configurable.rb#116
    def lock_ttl=(value); end

    # source://activesupport/8.0.1/lib/active_support/configurable.rb#115
    def on_conflict; end

    # source://activesupport/8.0.1/lib/active_support/configurable.rb#116
    def on_conflict=(value); end

    # source://activesupport/8.0.1/lib/active_support/configurable.rb#115
    def on_redis_connection_error; end

    # source://activesupport/8.0.1/lib/active_support/configurable.rb#116
    def on_redis_connection_error=(value); end

    # source://activesupport/8.0.1/lib/active_support/configurable.rb#115
    def redlock_options; end

    # source://activesupport/8.0.1/lib/active_support/configurable.rb#116
    def redlock_options=(value); end

    # source://activesupport/8.0.1/lib/active_support/configurable.rb#115
    def redlock_servers; end

    # source://activesupport/8.0.1/lib/active_support/configurable.rb#116
    def redlock_servers=(value); end
  end
end

# source://activejob-uniqueness//lib/active_job/uniqueness/errors.rb#5
class ActiveJob::Uniqueness::Error < ::RuntimeError; end

# Raised when unsupported on_conflict action is used
#
# class MyJob < ActiveJob::Base
#   unique :until_expired, on_conflict: :die # exception raised
# end
#
# source://activejob-uniqueness//lib/active_job/uniqueness/errors.rb#33
class ActiveJob::Uniqueness::InvalidOnConflictAction < ::ActiveJob::Uniqueness::Error; end

# Raised on attempt to enqueue a not unique job with :raise on_conflict.
# Also raised when the runtime lock is taken by some other job.
#
# class MyJob < ActiveJob::Base
#   unique :until_expired, on_conflict: :raise
# end
#
# MyJob.perform_later(1)
# MyJob.perform_later(1) # exception raised
#
# source://activejob-uniqueness//lib/active_job/uniqueness/errors.rb#25
class ActiveJob::Uniqueness::JobNotUnique < ::ActiveJob::Uniqueness::Error; end

# source://activejob-uniqueness//lib/active_job/uniqueness/lock_key.rb#7
class ActiveJob::Uniqueness::LockKey
  # @return [LockKey] a new instance of LockKey
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/lock_key.rb#14
  def initialize(job_class_name: T.unsafe(nil), arguments: T.unsafe(nil)); end

  # Returns the value of attribute arguments.
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/lock_key.rb#12
  def arguments; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/lock_key.rb#10
  def digest_method(*_arg0, **_arg1, &_arg2); end

  # Returns the value of attribute job_class_name.
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/lock_key.rb#12
  def job_class_name; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/lock_key.rb#23
  def lock_key; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/lock_key.rb#10
  def lock_prefix(*_arg0, **_arg1, &_arg2); end

  # used only by :until_and_while_executing strategy
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/lock_key.rb#32
  def runtime_lock_key; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/lock_key.rb#39
  def wildcard_key; end

  private

  # source://activejob-uniqueness//lib/active_job/uniqueness/lock_key.rb#59
  def arguments_digest; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/lock_key.rb#49
  def arguments_key_part; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/lock_key.rb#63
  def normalized_job_class_name; end

  # ActiveJob::Arguments is used to reflect the way ActiveJob serializes arguments in order to
  # serialize ActiveRecord models with GlobalID uuids instead of as_json which could give undesired artifacts
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/lock_key.rb#55
  def serialized_arguments; end
end

# source://activejob-uniqueness//lib/active_job/uniqueness/lock_key.rb#8
ActiveJob::Uniqueness::LockKey::FALLBACK_ARGUMENTS_STRING = T.let(T.unsafe(nil), String)

# Redlock requires a value of the lock to release the resource by Redlock::Client#unlock method.
# LockManager introduces LockManager#delete_lock to unlock by resource key only.
# See https://github.com/leandromoreira/redlock-rb/issues/51 for more details.
#
# source://activejob-uniqueness//lib/active_job/uniqueness/lock_manager.rb#8
class ActiveJob::Uniqueness::LockManager < ::Redlock::Client
  # Unlocks a resource by resource only.
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/lock_manager.rb#10
  def delete_lock(resource); end

  # Unlocks multiple resources by key wildcard.
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/lock_manager.rb#23
  def delete_locks(wildcard); end

  private

  # source://activejob-uniqueness//lib/active_job/uniqueness/lock_manager.rb#39
  def synced_redis_connection(server, &block); end
end

# source://activejob-uniqueness//lib/active_job/uniqueness/lock_manager.rb#20
ActiveJob::Uniqueness::LockManager::DELETE_LOCKS_SCAN_COUNT = T.let(T.unsafe(nil), Integer)

# source://activejob-uniqueness//lib/active_job/uniqueness/log_subscriber.rb#7
class ActiveJob::Uniqueness::LogSubscriber < ::ActiveSupport::LogSubscriber
  # source://activejob-uniqueness//lib/active_job/uniqueness/log_subscriber.rb#44
  def conflict(event); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/log_subscriber.rb#8
  def lock(event); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/log_subscriber.rb#53
  def runtime_conflict(event); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/log_subscriber.rb#17
  def runtime_lock(event); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/log_subscriber.rb#35
  def runtime_unlock(event); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/log_subscriber.rb#26
  def unlock(event); end

  private

  # source://activejob-uniqueness//lib/active_job/uniqueness/log_subscriber.rb#68
  def args_info(job); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/log_subscriber.rb#82
  def format(arg); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/log_subscriber.rb#64
  def lock_info(job, resource); end

  # @return [Boolean]
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/log_subscriber.rb#76
  def log_arguments?(job); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/log_subscriber.rb#95
  def logger; end
end

# source://activejob-uniqueness//lib/active_job/uniqueness/sidekiq_patch.rb#24
module ActiveJob::Uniqueness::SidekiqPatch; end

# source://activejob-uniqueness//lib/active_job/uniqueness/sidekiq_patch.rb#49
module ActiveJob::Uniqueness::SidekiqPatch::Job
  # source://activejob-uniqueness//lib/active_job/uniqueness/sidekiq_patch.rb#50
  def delete; end
end

# source://activejob-uniqueness//lib/active_job/uniqueness/sidekiq_patch.rb#63
module ActiveJob::Uniqueness::SidekiqPatch::JobSet
  # source://activejob-uniqueness//lib/active_job/uniqueness/sidekiq_patch.rb#64
  def clear; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/sidekiq_patch.rb#69
  def delete_by_value(name, value); end
end

# source://activejob-uniqueness//lib/active_job/uniqueness/sidekiq_patch.rb#56
module ActiveJob::Uniqueness::SidekiqPatch::Queue
  # source://activejob-uniqueness//lib/active_job/uniqueness/sidekiq_patch.rb#57
  def clear; end
end

# source://activejob-uniqueness//lib/active_job/uniqueness/sidekiq_patch.rb#41
module ActiveJob::Uniqueness::SidekiqPatch::ScheduledSet
  # source://activejob-uniqueness//lib/active_job/uniqueness/sidekiq_patch.rb#42
  def delete(score, job_id); end
end

# source://activejob-uniqueness//lib/active_job/uniqueness/sidekiq_patch.rb#25
module ActiveJob::Uniqueness::SidekiqPatch::SortedEntry
  # source://activejob-uniqueness//lib/active_job/uniqueness/sidekiq_patch.rb#26
  def delete; end

  private

  # source://activejob-uniqueness//lib/active_job/uniqueness/sidekiq_patch.rb#33
  def remove_job; end
end

# See Configuration#lock_strategies if you want to define custom strategy
#
# source://activejob-uniqueness//lib/active_job/uniqueness/strategies.rb#6
module ActiveJob::Uniqueness::Strategies
  extend ::ActiveSupport::Autoload

  class << self
    # source://activejob-uniqueness//lib/active_job/uniqueness/strategies.rb#17
    def lookup(strategy); end

    private

    # source://activejob-uniqueness//lib/active_job/uniqueness/strategies.rb#25
    def matching_strategy(const); end
  end
end

# Base strategy is not supposed to actually be used as uniqueness strategy.
#
# source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#7
class ActiveJob::Uniqueness::Strategies::Base
  # @return [Base] a new instance of Base
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#16
  def initialize(job:); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#54
  def after_perform; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#44
  def around_enqueue(block); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#49
  def around_perform(block); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#36
  def before_enqueue; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#40
  def before_perform; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#12
  def config(*_arg0, **_arg1, &_arg2); end

  # Returns the value of attribute job.
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#14
  def job; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#24
  def lock(resource:, ttl:, event: T.unsafe(nil)); end

  # Returns the value of attribute lock_key.
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#14
  def lock_key; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#12
  def lock_manager(*_arg0, **_arg1, &_arg2); end

  # Returns the value of attribute lock_ttl.
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#14
  def lock_ttl; end

  # Returns the value of attribute on_conflict.
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#14
  def on_conflict; end

  # Returns the value of attribute on_redis_connection_error.
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#14
  def on_redis_connection_error; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#30
  def unlock(resource:, event: T.unsafe(nil)); end

  private

  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#104
  def abort_job; end

  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#87
  def handle_conflict(on_conflict:, resource:, event: T.unsafe(nil)); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#96
  def handle_redis_connection_error(resource:, on_redis_connection_error:, error:); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#110
  def instrument(action, payload = T.unsafe(nil)); end

  # @raise [JobNotUnique]
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#114
  def raise_not_unique_job_error(resource:, event:); end
end

# https://github.com/rails/rails/pull/17227
# https://groups.google.com/g/rubyonrails-core/c/mhD4T90g0G4
#
# source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#10
ActiveJob::Uniqueness::Strategies::Base::ACTIVEJOB_SUPPORTS_THROW_ABORT = T.let(T.unsafe(nil), TrueClass)

# source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#58
module ActiveJob::Uniqueness::Strategies::Base::LockingOnEnqueue
  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#72
  def around_enqueue(block); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/base.rb#59
  def before_enqueue; end
end

# Locks the job when it is pushed to the queue.
# Unlocks the job before the job is started.
# Then creates runtime lock to prevent simultaneous jobs from being executed.
#
# source://activejob-uniqueness//lib/active_job/uniqueness/strategies/until_and_while_executing.rb#9
class ActiveJob::Uniqueness::Strategies::UntilAndWhileExecuting < ::ActiveJob::Uniqueness::Strategies::Base
  include ::ActiveJob::Uniqueness::Strategies::Base::LockingOnEnqueue

  # @return [UntilAndWhileExecuting] a new instance of UntilAndWhileExecuting
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/until_and_while_executing.rb#14
  def initialize(job:); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/until_and_while_executing.rb#33
  def around_perform(block); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/until_and_while_executing.rb#24
  def before_perform; end

  # Returns the value of attribute on_runtime_conflict.
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/until_and_while_executing.rb#12
  def on_runtime_conflict; end

  # Returns the value of attribute runtime_lock_key.
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/until_and_while_executing.rb#12
  def runtime_lock_key; end

  # Returns the value of attribute runtime_lock_ttl.
  #
  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/until_and_while_executing.rb#12
  def runtime_lock_ttl; end
end

# Locks the job when it is pushed to the queue.
# Unlocks the job when the job is finished.
#
# source://activejob-uniqueness//lib/active_job/uniqueness/strategies/until_executed.rb#8
class ActiveJob::Uniqueness::Strategies::UntilExecuted < ::ActiveJob::Uniqueness::Strategies::Base
  include ::ActiveJob::Uniqueness::Strategies::Base::LockingOnEnqueue

  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/until_executed.rb#11
  def after_perform; end
end

# Locks the job when it is pushed to the queue.
# Unlocks the job before the job is started.
#
# source://activejob-uniqueness//lib/active_job/uniqueness/strategies/until_executing.rb#8
class ActiveJob::Uniqueness::Strategies::UntilExecuting < ::ActiveJob::Uniqueness::Strategies::Base
  include ::ActiveJob::Uniqueness::Strategies::Base::LockingOnEnqueue

  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/until_executing.rb#11
  def before_perform; end
end

# Locks the job when it is pushed to the queue.
# Does not allow new jobs enqueued until lock is expired.
#
# source://activejob-uniqueness//lib/active_job/uniqueness/strategies/until_expired.rb#8
class ActiveJob::Uniqueness::Strategies::UntilExpired < ::ActiveJob::Uniqueness::Strategies::Base
  include ::ActiveJob::Uniqueness::Strategies::Base::LockingOnEnqueue
end

# Locks the job when the job starts.
# Unlocks the job when the job is finished.
#
# source://activejob-uniqueness//lib/active_job/uniqueness/strategies/while_executing.rb#8
class ActiveJob::Uniqueness::Strategies::WhileExecuting < ::ActiveJob::Uniqueness::Strategies::Base
  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/while_executing.rb#16
  def around_perform(block); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/strategies/while_executing.rb#9
  def before_perform; end
end

# Raised when unknown strategy is referenced in the job class
#
# class MyJob < ActiveJob::Base
#   unique :invalid_strategy # exception raised
# end
#
# source://activejob-uniqueness//lib/active_job/uniqueness/errors.rb#13
class ActiveJob::Uniqueness::StrategyNotFound < ::ActiveJob::Uniqueness::Error; end

# Mocks ActiveJob::Uniqueness::LockManager methods.
# See ActiveJob::Uniqueness.test_mode!
#
# source://activejob-uniqueness//lib/active_job/uniqueness/test_lock_manager.rb#7
class ActiveJob::Uniqueness::TestLockManager
  # source://activejob-uniqueness//lib/active_job/uniqueness/test_lock_manager.rb#8
  def delete_lock(*_args); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/test_lock_manager.rb#8
  def delete_locks(*_args); end

  # source://activejob-uniqueness//lib/active_job/uniqueness/test_lock_manager.rb#8
  def lock(*_args); end
end

# source://activejob-uniqueness//lib/active_job/uniqueness/version.rb#5
ActiveJob::Uniqueness::VERSION = T.let(T.unsafe(nil), String)

class Sidekiq::JobRecord
  include ::ActiveJob::Uniqueness::SidekiqPatch::Job
end

class Sidekiq::JobSet < ::Sidekiq::SortedSet
  include ::ActiveJob::Uniqueness::SidekiqPatch::JobSet
end

class Sidekiq::Queue
  include ::ActiveJob::Uniqueness::SidekiqPatch::Queue
end

class Sidekiq::ScheduledSet < ::Sidekiq::JobSet
  include ::ActiveJob::Uniqueness::SidekiqPatch::ScheduledSet
end

class Sidekiq::SortedEntry < ::Sidekiq::JobRecord
  include ::ActiveJob::Uniqueness::SidekiqPatch::SortedEntry
end
