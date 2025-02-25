# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `redlock` gem.
# Please instead update this file by running `bin/tapioca gem redlock`.


# source://redlock//lib/redlock/version.rb#1
module Redlock
  include ::Redlock::Scripts
end

# source://redlock//lib/redlock/client.rb#17
class Redlock::Client
  # Create a distributed lock manager implementing redlock algorithm.
  # Params:
  # +servers+:: The array of redis connection URLs or Redis connection instances. Or a mix of both.
  # +options+::
  #    * `retry_count`   being how many times it'll try to lock a resource (default: 3)
  #    * `retry_delay`   being how many ms to sleep before try to lock again (default: 200)
  #    * `retry_jitter`  being how many ms to jitter retry delay (default: 50)
  #    * `redis_timeout` being how the Redis timeout will be set in seconds (default: 0.1)
  #    * `time_source`   being a callable object returning a monotonic time in milliseconds
  #                      (default: see #default_time_source)
  #
  # @return [Client] a new instance of Client
  #
  # source://redlock//lib/redlock/client.rb#48
  def initialize(servers = T.unsafe(nil), options = T.unsafe(nil)); end

  # Gets remaining ttl of a resource. The ttl is returned if the holder
  # currently holds the lock and it has not expired, otherwise the method
  # returns nil.
  # Params:
  # +lock_info+:: the lock that has been acquired when you locked the resource
  #
  # source://redlock//lib/redlock/client.rb#125
  def get_remaining_ttl_for_lock(lock_info); end

  # Gets remaining ttl of a resource. If there is no valid lock, the method
  # returns nil.
  # Params:
  # +resource+:: the name of the resource (string) for which to check the ttl
  #
  # source://redlock//lib/redlock/client.rb#135
  def get_remaining_ttl_for_resource(resource); end

  # Locks a resource for a given time.
  # Params:
  # +resource+:: the resource (or key) string to be locked.
  # +ttl+:: The time-to-live in ms for the lock.
  # +options+:: Hash of optional parameters
  #  * +retry_count+: see +initialize+
  #  * +retry_delay+: see +initialize+
  #  * +retry_jitter+: see +initialize+
  #  * +extend+: A lock ("lock_info") to extend.
  #  * +extend_only_if_locked+: Boolean, if +extend+ is given, only acquire lock if currently held
  #  * +extend_only_if_life+: Deprecated, same as +extend_only_if_locked+
  #  * +extend_life+: Deprecated, same as +extend_only_if_locked+
  # +block+:: an optional block to be executed; after its execution, the lock (if successfully
  # acquired) is automatically unlocked.
  #
  # source://redlock//lib/redlock/client.rb#78
  def lock(resource, ttl, options = T.unsafe(nil), &block); end

  # Locks a resource, executing the received block only after successfully acquiring the lock,
  # and returning its return value as a result.
  # See Redlock::Client#lock for parameters.
  #
  # source://redlock//lib/redlock/client.rb#111
  def lock!(resource, *args); end

  # Checks if a resource is locked
  # Params:
  # +lock_info+:: the lock that has been acquired when you locked the resource
  #
  # @return [Boolean]
  #
  # source://redlock//lib/redlock/client.rb#144
  def locked?(resource); end

  # Unlocks a resource.
  # Params:
  # +lock_info+:: the lock that has been acquired when you locked the resource.
  #
  # source://redlock//lib/redlock/client.rb#104
  def unlock(lock_info); end

  # Checks if a lock is still valid
  # Params:
  # +lock_info+:: the lock that has been acquired when you locked the resource
  #
  # @return [Boolean]
  #
  # source://redlock//lib/redlock/client.rb#152
  def valid_lock?(lock_info); end

  private

  # source://redlock//lib/redlock/client.rb#286
  def attempt_retry_delay(attempt_number, options); end

  # source://redlock//lib/redlock/client.rb#361
  def drift(ttl); end

  # source://redlock//lib/redlock/client.rb#300
  def lock_instances(resource, ttl, options); end

  # source://redlock//lib/redlock/client.rb#368
  def timed; end

  # source://redlock//lib/redlock/client.rb#330
  def try_get_remaining_ttl(resource); end

  # source://redlock//lib/redlock/client.rb#266
  def try_lock_instances(resource, ttl, options); end

  class << self
    # Returns default time source function depending on CLOCK_MONOTONIC availability.
    #
    # source://redlock//lib/redlock/client.rb#30
    def default_time_source; end
  end
end

# source://redlock//lib/redlock/client.rb#25
Redlock::Client::CLOCK_DRIFT_FACTOR = T.let(T.unsafe(nil), Float)

# source://redlock//lib/redlock/client.rb#18
Redlock::Client::DEFAULT_REDIS_HOST = T.let(T.unsafe(nil), String)

# source://redlock//lib/redlock/client.rb#19
Redlock::Client::DEFAULT_REDIS_PORT = T.let(T.unsafe(nil), String)

# source://redlock//lib/redlock/client.rb#21
Redlock::Client::DEFAULT_REDIS_TIMEOUT = T.let(T.unsafe(nil), Float)

# source://redlock//lib/redlock/client.rb#20
Redlock::Client::DEFAULT_REDIS_URLS = T.let(T.unsafe(nil), Array)

# source://redlock//lib/redlock/client.rb#22
Redlock::Client::DEFAULT_RETRY_COUNT = T.let(T.unsafe(nil), Integer)

# source://redlock//lib/redlock/client.rb#23
Redlock::Client::DEFAULT_RETRY_DELAY = T.let(T.unsafe(nil), Integer)

# source://redlock//lib/redlock/client.rb#24
Redlock::Client::DEFAULT_RETRY_JITTER = T.let(T.unsafe(nil), Integer)

# source://redlock//lib/redlock/client.rb#159
class Redlock::Client::RedisInstance
  # @return [RedisInstance] a new instance of RedisInstance
  #
  # source://redlock//lib/redlock/client.rb#160
  def initialize(connection); end

  # source://redlock//lib/redlock/client.rb#221
  def get_remaining_ttl(resource); end

  # source://redlock//lib/redlock/client.rb#176
  def initialize_client(options); end

  # source://redlock//lib/redlock/client.rb#203
  def lock(resource, val, ttl, allow_new_lock); end

  # source://redlock//lib/redlock/client.rb#199
  def synchronize; end

  # source://redlock//lib/redlock/client.rb#211
  def unlock(resource, val); end

  private

  # source://redlock//lib/redlock/client.rb#233
  def load_scripts; end

  # source://redlock//lib/redlock/client.rb#247
  def recover_from_script_flush; end
end

# source://redlock//lib/redlock/client.rb#8
class Redlock::LockAcquisitionError < ::Redlock::LockError
  # @return [LockAcquisitionError] a new instance of LockAcquisitionError
  #
  # source://redlock//lib/redlock/client.rb#11
  def initialize(message, errors); end

  # Returns the value of attribute errors.
  #
  # source://redlock//lib/redlock/client.rb#9
  def errors; end
end

# source://redlock//lib/redlock.rb#7
class Redlock::LockError < ::StandardError
  # @return [LockError] a new instance of LockError
  #
  # source://redlock//lib/redlock.rb#8
  def initialize(resource); end
end

# source://redlock//lib/redlock/scripts.rb#4
module Redlock::Scripts; end

# thanks to https://github.com/sbertrang/redis-distlock/blob/master/lib/Redis/DistLock.pm
# also https://github.com/sbertrang/redis-distlock/issues/2 which proposes the value-checking
# and @maltoe for https://github.com/leandromoreira/redlock-rb/pull/20#discussion_r38903633
#
# source://redlock//lib/redlock/scripts.rb#16
Redlock::Scripts::LOCK_SCRIPT = T.let(T.unsafe(nil), String)

# source://redlock//lib/redlock/scripts.rb#31
Redlock::Scripts::LOCK_SCRIPT_SHA = T.let(T.unsafe(nil), String)

# source://redlock//lib/redlock/scripts.rb#22
Redlock::Scripts::PTTL_SCRIPT = T.let(T.unsafe(nil), String)

# source://redlock//lib/redlock/scripts.rb#32
Redlock::Scripts::PTTL_SCRIPT_SHA = T.let(T.unsafe(nil), String)

# source://redlock//lib/redlock/scripts.rb#5
Redlock::Scripts::UNLOCK_SCRIPT = T.let(T.unsafe(nil), String)

# We do not want to load the scripts on every Redlock::Client initialization.
# Hence, we rely on Redis handing out SHA1 hashes of the cached scripts and
# pre-calculate them instead of loading the scripts unconditionally. If the scripts
# have not been cached on Redis, `recover_from_script_flush` has our backs.
#
# source://redlock//lib/redlock/scripts.rb#30
Redlock::Scripts::UNLOCK_SCRIPT_SHA = T.let(T.unsafe(nil), String)

# source://redlock//lib/redlock/version.rb#2
Redlock::VERSION = T.let(T.unsafe(nil), String)
