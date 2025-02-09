# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `sidekiq-throttled` gem.
# Please instead update this file by running `bin/tapioca gem sidekiq-throttled`.


# @see https://github.com/mperham/sidekiq/
#
# source://sidekiq-throttled//lib/sidekiq/throttled/config.rb#3
module Sidekiq
  class << self
    # source://sidekiq/7.3.7/lib/sidekiq.rb#136
    def configure_client; end

    # source://sidekiq/7.3.7/lib/sidekiq.rb#124
    def configure_embed(&block); end

    # source://sidekiq/7.3.7/lib/sidekiq.rb#97
    def configure_server(&block); end

    # source://sidekiq/7.3.7/lib/sidekiq.rb#89
    def default_configuration; end

    # source://sidekiq/7.3.7/lib/sidekiq.rb#85
    def default_job_options; end

    # source://sidekiq/7.3.7/lib/sidekiq.rb#81
    def default_job_options=(hash); end

    # source://sidekiq/7.3.7/lib/sidekiq.rb#57
    def dump_json(object); end

    # source://sidekiq/7.3.7/lib/sidekiq.rb#65
    def ent?; end

    # source://sidekiq/7.3.7/lib/sidekiq.rb#102
    def freeze!; end

    # source://sidekiq/7.3.7/lib/sidekiq/version.rb#7
    def gem_version; end

    # source://sidekiq/7.3.7/lib/sidekiq.rb#53
    def load_json(string); end

    # source://sidekiq/7.3.7/lib/sidekiq.rb#93
    def logger; end

    # source://sidekiq/7.3.7/lib/sidekiq.rb#61
    def pro?; end

    # source://sidekiq/7.3.7/lib/sidekiq.rb#73
    def redis(&block); end

    # source://sidekiq/7.3.7/lib/sidekiq.rb#69
    def redis_pool; end

    # source://sidekiq/7.3.7/lib/sidekiq.rb#49
    def server?; end

    # source://sidekiq/7.3.7/lib/sidekiq.rb#77
    def strict_args!(mode = T.unsafe(nil)); end

    # source://sidekiq/7.3.7/lib/sidekiq/transaction_aware_client.rb#40
    def transactional_push!; end

    # source://sidekiq/7.3.7/lib/sidekiq.rb#45
    def ❨╯°□°❩╯︵┻━┻; end
  end
end

class Sidekiq::BasicFetch
  include ::Sidekiq::Throttled::Patches::BasicFetch
  include ::Sidekiq::Throttled::Patches::ThrottledRetriever

  # source://sidekiq/7.3.7/lib/sidekiq/fetch.rb#30
  def initialize(cap); end

  # source://sidekiq/7.3.7/lib/sidekiq/fetch.rb#51
  def bulk_requeue(inprogress); end

  # source://sidekiq-throttled//lib/sidekiq/throttled/patches/throttled_retriever.rb#10
  def retrieve_work; end

  private

  # source://sidekiq-throttled//lib/sidekiq/throttled/patches/basic_fetch.rb#34
  def queues_cmd; end
end

# Concurrency and threshold throttling for Sidekiq.
#
# Just add somewhere in your bootstrap:
#
#     require "sidekiq/throttled"
#
# Once you've done that you can include {Sidekiq::Throttled::Job} to your
# job classes and configure throttling:
#
#     class MyJob
#       include Sidekiq::Job
#       include Sidekiq::Throttled::Job
#
#       sidekiq_options :queue => :my_queue
#
#       sidekiq_throttle({
#         # Allow maximum 10 concurrent jobs of this class at a time.
#         :concurrency => { :limit => 10 },
#         # Allow maximum 1K jobs being processed within one hour window.
#         :threshold => { :limit => 1_000, :period => 1.hour }
#       })
#
#       def perform
#         # ...
#       end
#     end
#
# source://sidekiq-throttled//lib/sidekiq/throttled/config.rb#4
module Sidekiq::Throttled
  class << self
    # @example
    #   Sidekiq::Throttled.configure do |config|
    #   config.cooldown_period = nil # Disable queues cooldown manager
    #   end
    # @yieldparam config [Config]
    #
    # source://sidekiq-throttled//lib/sidekiq/throttled.rb#63
    def configure; end

    # @api internal
    # @return [Cooldown, nil]
    #
    # source://sidekiq-throttled//lib/sidekiq/throttled.rb#55
    def cooldown; end

    # @deprecated Will be removed in 2.0.0
    #
    # source://sidekiq-throttled//lib/sidekiq/throttled.rb#92
    def setup!; end

    # Tells whenever job is throttled or not.
    #
    # @param message [String] Job's JSON payload
    # @return [Boolean]
    #
    # source://sidekiq-throttled//lib/sidekiq/throttled.rb#78
    def throttled?(message); end
  end
end

# Configuration object.
#
# source://sidekiq-throttled//lib/sidekiq/throttled/config.rb#6
class Sidekiq::Throttled::Config
  # @return [Config] a new instance of Config
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/config.rb#22
  def initialize; end

  # Period in seconds to exclude queue from polling in case it returned
  # {#cooldown_threshold} amount of throttled jobs in a row.
  #
  # Set this to `nil` to disable cooldown completely.
  #
  # @return [Float, nil]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/config.rb#13
  def cooldown_period; end

  # @raise [TypeError]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/config.rb#28
  def cooldown_period=(value); end

  # Amount of throttled jobs returned from the queue subsequently after
  # which queue will be excluded from polling for the durations of
  # {#cooldown_period}.
  #
  # @return [Integer]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/config.rb#20
  def cooldown_threshold; end

  # @raise [TypeError]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/config.rb#36
  def cooldown_threshold=(value); end
end

# Queues cooldown manager. Tracks list of queues that should be temporarily
# (for the duration of {Config#cooldown_period}) excluded from polling.
#
# @api internal
#
# source://sidekiq-throttled//lib/sidekiq/throttled/cooldown.rb#13
class Sidekiq::Throttled::Cooldown
  # @api internal
  # @param config [Config]
  # @return [Cooldown] a new instance of Cooldown
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/cooldown.rb#25
  def initialize(config); end

  # Notify that given queue returned job that was not throttled.
  #
  # @api internal
  # @param queue [String]
  # @return [void]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/cooldown.rb#43
  def notify_admitted(queue); end

  # Notify that given queue returned job that was throttled.
  #
  # @api internal
  # @param queue [String]
  # @return [void]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/cooldown.rb#35
  def notify_throttled(queue); end

  # List of queues that should not be polled
  #
  # @api internal
  # @return [Array<String>]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/cooldown.rb#50
  def queues; end

  class << self
    # Returns new {Cooldown} instance if {Config#cooldown_period} is not `nil`.
    #
    # @api internal
    # @param config [Config]
    # @return [Cooldown, nil]
    #
    # source://sidekiq-throttled//lib/sidekiq/throttled/cooldown.rb#19
    def [](config); end
  end
end

# Generic class for Sidekiq::Throttled errors
#
# source://sidekiq-throttled//lib/sidekiq/throttled/errors.rb#6
class Sidekiq::Throttled::Error < ::StandardError; end

# Set of elements with expirations.
#
# @api internal
# @example
#   set = ExpirableSet.new(10.0)
#   set.add("a")
#   sleep(5)
#   set.add("b")
#   set.to_a # => ["a", "b"]
#   sleep(5)
#   set.to_a # => ["b"]
#
# source://sidekiq-throttled//lib/sidekiq/throttled/expirable_set.rb#19
class Sidekiq::Throttled::ExpirableSet
  include ::Enumerable

  # @api internal
  # @param ttl [Float] expiration is seconds
  # @raise [ArgumentError] if `ttl` is not positive Float
  # @return [ExpirableSet] a new instance of ExpirableSet
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/expirable_set.rb#24
  def initialize(ttl); end

  # @api internal
  # @param element [Object]
  # @return [ExpirableSet] self
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/expirable_set.rb#33
  def add(element); end

  # @api internal
  # @yield [Object] Gives each live (not expired) element to the block
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/expirable_set.rb#46
  def each; end

  private

  # @api internal
  # @return [Boolean]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/expirable_set.rb#65
  def expired?(sunset, horizon); end

  # @api internal
  # @return [Float]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/expirable_set.rb#61
  def now; end
end

# Adds helpers to your worker classes
#
# @example Usage
#
#   class MyJob
#   include Sidekiq::Job
#   include Sidekiq::Throttled::Job
#
#   sidekiq_options :queue => :my_queue
#   sidekiq_throttle :threshold => { :limit => 123, :period => 1.hour }
#
#   def perform
#   # ...
#   end
#   end
# @see ClassMethods
#
# source://sidekiq-throttled//lib/sidekiq/throttled/job.rb#25
module Sidekiq::Throttled::Job
  mixes_in_class_methods ::Sidekiq::Throttled::Job::ClassMethods

  class << self
    # Extends worker class with {ClassMethods}.
    #
    # @note Using `included` hook with extending worker with {ClassMethods}
    #   in order to make API inline with `include Sidekiq::Job`.
    # @private
    #
    # source://sidekiq-throttled//lib/sidekiq/throttled/job.rb#32
    def included(base); end
  end
end

# Helper methods added to the singleton class of destination
#
# source://sidekiq-throttled//lib/sidekiq/throttled/job.rb#37
module Sidekiq::Throttled::Job::ClassMethods
  # Registers some strategy for the worker.
  #
  # @example Allow max 123 MyJob jobs per hour
  #
  #   class MyJob
  #   include Sidekiq::Job
  #   include Sidekiq::Throttled::Job
  #
  #   sidekiq_throttle({
  #   :threshold => { :limit => 123, :period => 1.hour }
  #   })
  #   end
  # @example Allow max 10 concurrently running MyJob jobs
  #
  #   class MyJob
  #   include Sidekiq::Job
  #   include Sidekiq::Throttled::Job
  #
  #   sidekiq_throttle({
  #   :concurrency => { :limit => 10 }
  #   })
  #   end
  # @example Allow max 10 concurrent MyJob jobs and max 123 per hour
  #
  #   class MyJob
  #   include Sidekiq::Job
  #   include Sidekiq::Throttled::Job
  #
  #   sidekiq_throttle({
  #   :threshold => { :limit => 123, :period => 1.hour },
  #   :concurrency => { :limit => 10 }
  #   })
  #   end
  # @return [void]
  # @see Registry.add
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/job.rb#76
  def sidekiq_throttle(**kwargs); end

  # Adds current worker to preconfigured throttling strategy. Allows
  # sharing same pool for multiple workers.
  #
  # First of all we need to create shared throttling strategy:
  #
  #     # Create google_api throttling strategy
  #     Sidekiq::Throttled::Registry.add(:google_api, {
  #       :threshold => { :limit => 123, :period => 1.hour },
  #       :concurrency => { :limit => 10 }
  #     })
  #
  # Now we can assign it to our workers:
  #
  #     class FetchProfileJob
  #       include Sidekiq::Job
  #       include Sidekiq::Throttled::Job
  #
  #       sidekiq_throttle_as :google_api
  #     end
  #
  #     class FetchCommentsJob
  #       include Sidekiq::Job
  #       include Sidekiq::Throttled::Job
  #
  #       sidekiq_throttle_as :google_api
  #     end
  #
  # With the above configuration we ensure that there are maximum 10
  # concurrently running jobs of FetchProfileJob or FetchCommentsJob
  # allowed. And only 123 jobs of those are executed per hour.
  #
  # In other words, it will allow:
  #
  # - only `X` concurrent `FetchProfileJob`s
  # - max `XX` `FetchProfileJob` per hour
  # - only `Y` concurrent `FetchCommentsJob`s
  # - max `YY` `FetchCommentsJob` per hour
  #
  # Where `(X + Y) == 10` and `(XX + YY) == 123`
  #
  # @return [void]
  # @see Registry.add_alias
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/job.rb#122
  def sidekiq_throttle_as(name); end
end

# source://sidekiq-throttled//lib/sidekiq/throttled.rb#45
Sidekiq::Throttled::MUTEX = T.let(T.unsafe(nil), Thread::Mutex)

# source://sidekiq-throttled//lib/sidekiq/throttled/message.rb#5
class Sidekiq::Throttled::Message
  # @return [Message] a new instance of Message
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/message.rb#6
  def initialize(item); end

  # source://sidekiq-throttled//lib/sidekiq/throttled/message.rb#14
  def job_args; end

  # source://sidekiq-throttled//lib/sidekiq/throttled/message.rb#10
  def job_class; end

  # source://sidekiq-throttled//lib/sidekiq/throttled/message.rb#18
  def job_id; end

  private

  # source://sidekiq-throttled//lib/sidekiq/throttled/message.rb#24
  def parse(item); end
end

# source://sidekiq-throttled//lib/sidekiq/throttled/middlewares/server.rb#9
module Sidekiq::Throttled::Middlewares; end

# Server middleware required for Sidekiq::Throttled functioning.
#
# source://sidekiq-throttled//lib/sidekiq/throttled/middlewares/server.rb#11
class Sidekiq::Throttled::Middlewares::Server
  include ::Sidekiq::ServerMiddleware

  # source://sidekiq-throttled//lib/sidekiq/throttled/middlewares/server.rb#14
  def call(_worker, msg, _queue); end
end

# source://sidekiq-throttled//lib/sidekiq/throttled/patches/throttled_retriever.rb#5
module Sidekiq::Throttled::Patches; end

# source://sidekiq-throttled//lib/sidekiq/throttled/patches/basic_fetch.rb#11
module Sidekiq::Throttled::Patches::BasicFetch
  private

  # Returns list of queues to try to fetch jobs from.
  #
  # @note It may return an empty array.
  # @param queues [Array<String>]
  # @return [Array<String>]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/patches/basic_fetch.rb#34
  def queues_cmd; end

  # Pushes job back to the head of the queue, so that job won't be tried
  # immediately after it was requeued (in most cases).
  #
  # @note This is triggered when job is throttled. So it is same operation
  #   Sidekiq performs upon `Sidekiq::Worker.perform_async` call.
  # @return [void]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/patches/basic_fetch.rb#25
  def requeue_throttled(work); end

  class << self
    # source://sidekiq-throttled//lib/sidekiq/throttled/patches/basic_fetch.rb#12
    def prepended(base); end
  end
end

# source://sidekiq-throttled//lib/sidekiq/throttled/patches/super_fetch.rb#10
module Sidekiq::Throttled::Patches::SuperFetch
  private

  # Returns list of non-paused queues to try to fetch jobs from.
  #
  # @note It may return an empty array.
  # @return [Array<Array(String, String)>]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/patches/super_fetch.rb#34
  def active_queues; end

  # Calls SuperFetch UnitOfWork's requeue to remove the job from the
  # temporary queue and push job back to the head of the queue, so that
  # the job won't be tried immediately after it was requeued (in most cases).
  #
  # @note This is triggered when job is throttled.
  # @return [void]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/patches/super_fetch.rb#24
  def requeue_throttled(work); end

  class << self
    # source://sidekiq-throttled//lib/sidekiq/throttled/patches/super_fetch.rb#11
    def prepended(base); end
  end
end

# source://sidekiq-throttled//lib/sidekiq/throttled/patches/throttled_retriever.rb#6
module Sidekiq::Throttled::Patches::ThrottledRetriever
  # Retrieves job from redis.
  #
  # @return [Sidekiq::BasicFetch::UnitOfWork, nil]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/patches/throttled_retriever.rb#10
  def retrieve_work; end
end

# Registred strategies.
#
# @private
#
# source://sidekiq-throttled//lib/sidekiq/throttled/registry.rb#11
module Sidekiq::Throttled::Registry
  class << self
    # Adds strategy to the registry.
    #
    # @param name [#to_s]
    # @param concurrency [Hash] Concurrency options.
    #   See keyword args of {Strategy::Concurrency#initialize} for details.
    # @param threshold [Hash] Threshold options.
    #   See keyword args of {Strategy::Threshold#initialize} for details.
    # @param key_suffix [#call] Dynamic key suffix generator.
    # @param observer [#call] Process called after throttled.
    # @return [Strategy]
    #
    # source://sidekiq-throttled//lib/sidekiq/throttled/registry.rb#20
    def add(name, **kwargs); end

    # Adds alias for existing strategy.
    #
    # @param new_name [#to_s]
    # @param old_name [#to_s]
    # @raise [RuntimeError] if no strategy found with `old_name`
    # @return [Strategy]
    #
    # source://sidekiq-throttled//lib/sidekiq/throttled/registry.rb#32
    def add_alias(new_name, old_name); end

    # @overload each
    # @overload each
    #
    # source://sidekiq-throttled//lib/sidekiq/throttled/registry.rb#67
    def each; end

    # @overload each_with_static_keys
    # @overload each_with_static_keys
    #
    # source://sidekiq-throttled//lib/sidekiq/throttled/registry.rb#82
    def each_with_static_keys; end

    # @overload get
    # @overload get
    #
    # source://sidekiq-throttled//lib/sidekiq/throttled/registry.rb#51
    def get(name); end

    private

    # Find strategy by it's name.
    #
    # @param name [String]
    # @return [Strategy, nil]
    #
    # source://sidekiq-throttled//lib/sidekiq/throttled/registry.rb#96
    def find(name); end

    # Find strategy by class or it's parents.
    #
    # @param name [Class, #to_s]
    # @return [Strategy, nil]
    #
    # source://sidekiq-throttled//lib/sidekiq/throttled/registry.rb#104
    def find_by_class(name); end
  end
end

# Meta-strategy that couples {Concurrency} and {Threshold} strategies.
#
# @private
#
# source://sidekiq-throttled//lib/sidekiq/throttled/strategy/base.rb#5
class Sidekiq::Throttled::Strategy
  # @param name [#to_s]
  # @param concurrency [Hash] Concurrency options.
  #   See keyword args of {Strategy::Concurrency#initialize} for details.
  # @param threshold [Hash] Threshold options.
  #   See keyword args of {Strategy::Threshold#initialize} for details.
  # @param key_suffix [#call] Dynamic key suffix generator.
  # @param observer [#call] Process called after throttled.
  # @raise [ArgumentError]
  # @return [Strategy] a new instance of Strategy
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy.rb#34
  def initialize(name, concurrency: T.unsafe(nil), threshold: T.unsafe(nil), key_suffix: T.unsafe(nil), observer: T.unsafe(nil)); end

  # Returns the value of attribute concurrency.
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy.rb#17
  def concurrency; end

  # @return [Boolean] whenever strategy has dynamic config
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy.rb#53
  def dynamic?; end

  # Marks job as being processed.
  #
  # @return [void]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy.rb#79
  def finalize!(jid, *job_args); end

  # Returns the value of attribute observer.
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy.rb#25
  def observer; end

  # Resets count of jobs of all avaliable strategies
  #
  # @return [void]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy.rb#85
  def reset!; end

  # Returns the value of attribute threshold.
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy.rb#21
  def threshold; end

  # @return [Boolean] whenever job is throttled or not.
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy.rb#61
  def throttled?(jid, *job_args); end
end

# source://sidekiq-throttled//lib/sidekiq/throttled/strategy/base.rb#6
module Sidekiq::Throttled::Strategy::Base
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy/base.rb#7
  def limit(job_args = T.unsafe(nil)); end

  private

  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy/base.rb#13
  def key(job_args); end
end

# Concurrency throttling strategy
#
# source://sidekiq-throttled//lib/sidekiq/throttled/strategy/concurrency.rb#11
class Sidekiq::Throttled::Strategy::Concurrency
  include ::Sidekiq::Throttled::Strategy::Base

  # @param strategy_key [#to_s]
  # @param limit [#to_i, #call] Amount of allowed concurrent jobs
  #   per processors running for given key.
  # @param ttl [#to_i] Concurrency lock TTL in seconds.
  # @param key_suffix [Proc] Dynamic key suffix generator.
  # @return [Concurrency] a new instance of Concurrency
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy/concurrency.rb#31
  def initialize(strategy_key, limit:, ttl: T.unsafe(nil), key_suffix: T.unsafe(nil)); end

  # @return [Integer] Current count of jobs
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy/concurrency.rb#56
  def count(*job_args); end

  # @return [Boolean] Whenever strategy has dynamic config
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy/concurrency.rb#39
  def dynamic?; end

  # Remove jid from the pool of jobs in progress
  #
  # @return [void]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy/concurrency.rb#68
  def finalize!(jid, *job_args); end

  # Resets count of jobs
  #
  # @return [void]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy/concurrency.rb#62
  def reset!(*job_args); end

  # @return [Boolean] whenever job is throttled or not
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy/concurrency.rb#44
  def throttled?(jid, *job_args); end
end

# LUA script used to limit fetch concurrency.
# Logic behind the scene can be described in following pseudo code:
#
#     if @limit <= LLEN(@key)
#       return 1
#     else
#       PUSH(@key, @jid)
#       return 0
#     end
#
# source://sidekiq-throttled//lib/sidekiq/throttled/strategy/concurrency.rb#23
Sidekiq::Throttled::Strategy::Concurrency::SCRIPT = T.let(T.unsafe(nil), RedisPrescription)

# Threshold throttling strategy
#
# @todo Use redis TIME command instead of sending current timestamp from
#   sidekiq manager. See: http://redis.io/commands/time
#
# source://sidekiq-throttled//lib/sidekiq/throttled/strategy/threshold.rb#13
class Sidekiq::Throttled::Strategy::Threshold
  include ::Sidekiq::Throttled::Strategy::Base

  # @param strategy_key [#to_s]
  # @param limit [#to_i, #call] Amount of allowed concurrent jobs
  #   per period running for given key.
  # @param :period [#to_f, #call] Period in seconds.
  # @param key_suffix [Proc] Dynamic key suffix generator.
  # @return [Threshold] a new instance of Threshold
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy/threshold.rb#41
  def initialize(strategy_key, limit:, period:, key_suffix: T.unsafe(nil)); end

  # @return [Integer] Current count of jobs
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy/threshold.rb#73
  def count(*job_args); end

  # @return [Boolean] Whenever strategy has dynamic config
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy/threshold.rb#56
  def dynamic?; end

  # @return [Float] Period in seconds
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy/threshold.rb#49
  def period(job_args = T.unsafe(nil)); end

  # Resets count of jobs
  #
  # @return [void]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy/threshold.rb#79
  def reset!(*job_args); end

  # @return [Boolean] whenever job is throttled or not
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy/threshold.rb#61
  def throttled?(*job_args); end
end

# LUA script used to limit fetch threshold.
# Logic behind the scene can be described in following pseudo code:
#
#     def exceeded?
#       limit <= LLEN(@key) && NOW - LINDEX(@key, -1) < @period
#     end
#
#     def increase!
#       LPUSH(@key, NOW)
#       LTRIM(@key, 0, @limit - 1)
#       EXPIRE(@key, @period)
#     end
#
#     return 1 if exceeded?
#
#     increase!
#     return 0
#
# source://sidekiq-throttled//lib/sidekiq/throttled/strategy/threshold.rb#33
Sidekiq::Throttled::Strategy::Threshold::SCRIPT = T.let(T.unsafe(nil), RedisPrescription)

# Collection which transparently group several meta-strategies of one kind
#
# @private
#
# source://sidekiq-throttled//lib/sidekiq/throttled/strategy_collection.rb#9
class Sidekiq::Throttled::StrategyCollection
  include ::Enumerable

  # @param strategies [Hash, Array, nil] Concurrency or Threshold options
  #   or array of options.
  #   See keyword args of {Strategy::Concurrency#initialize} for details.
  #   See keyword args of {Strategy::Threshold#initialize} for details.
  # @param strategy [Class] class of strategy: Concurrency or Threshold
  # @param name [#to_s]
  # @param key_suffix [#call] Dynamic key suffix generator.
  # @return [StrategyCollection] a new instance of StrategyCollection
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy_collection.rb#21
  def initialize(strategies, strategy:, name:, key_suffix:); end

  # @return [Boolean] whenever any strategy in collection has dynamic config
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy_collection.rb#34
  def dynamic?; end

  # Iterates each strategy in collection
  #
  # @param block [#call]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy_collection.rb#29
  def each(*_arg0, **_arg1, &_arg2); end

  # Marks job as being processed.
  #
  # @return [void]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy_collection.rb#46
  def finalize!(*_arg0, **_arg1, &_arg2); end

  # Resets count of jobs of all avaliable strategies
  #
  # @return [void]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy_collection.rb#52
  def reset!; end

  # Returns the value of attribute strategies.
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy_collection.rb#12
  def strategies; end

  # by any strategy in collection.
  #
  # @return [Boolean] whenever job is throttled or not
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy_collection.rb#40
  def throttled?(*_arg0, **_arg1, &_arg2); end

  private

  # @return [Base, nil]
  #
  # source://sidekiq-throttled//lib/sidekiq/throttled/strategy_collection.rb#59
  def make_strategy(strategy, name, key_suffix, options); end
end

# Gem version
#
# source://sidekiq-throttled//lib/sidekiq/throttled/version.rb#6
Sidekiq::Throttled::VERSION = T.let(T.unsafe(nil), String)

# A new module, Sidekiq::Job, was added in Sidekiq version 6.3.0 as a
# simple alias for Sidekiq::Worker as the term "worker" was considered
# too generic and confusing. Many people call a Sidekiq process a "worker"
# whereas others call the thread that executes jobs a "worker".
#
# source://sidekiq-throttled//lib/sidekiq/throttled/worker.rb#11
Sidekiq::Throttled::Worker = Sidekiq::Throttled::Job
