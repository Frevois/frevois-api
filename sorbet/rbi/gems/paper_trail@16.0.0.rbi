# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `paper_trail` gem.
# Please instead update this file by running `bin/tapioca gem paper_trail`.


# An ActiveRecord extension that tracks changes to your models, for auditing or
# versioning.
#
# source://paper_trail//lib/paper_trail/errors.rb#3
module PaperTrail
  extend ::PaperTrail::Cleaner

  class << self
    # @return [Boolean]
    #
    # source://paper_trail//lib/paper_trail.rb#118
    def active_record_gte_7_0?; end

    # Returns PaperTrail's global configuration object, a singleton. These
    # settings affect all threads.
    #
    # @api public
    # @yield [@config]
    #
    # source://paper_trail//lib/paper_trail.rb#106
    def config; end

    # Returns PaperTrail's global configuration object, a singleton. These
    # settings affect all threads.
    #
    # @api public
    # @yield [@config]
    #
    # source://paper_trail//lib/paper_trail.rb#106
    def configure; end

    # source://paper_trail//lib/paper_trail.rb#122
    def deprecator; end

    # Switches PaperTrail on or off, for all threads.
    #
    # @api public
    #
    # source://paper_trail//lib/paper_trail.rb#40
    def enabled=(value); end

    # Returns `true` if PaperTrail is on, `false` otherwise. This is the
    # on/off switch that affects all threads. Enabled by default.
    #
    # @api public
    # @return [Boolean]
    #
    # source://paper_trail//lib/paper_trail.rb#47
    def enabled?; end

    # Returns PaperTrail's `::Gem::Version`, convenient for comparisons. This is
    # recommended over `::PaperTrail::VERSION::STRING`.
    #
    # Added in 7.0.0
    #
    # @api public
    #
    # source://paper_trail//lib/paper_trail.rb#57
    def gem_version; end

    # Set variables for the current request, eg. whodunnit.
    #
    # All request-level variables are now managed here, as of PT 9. Having the
    # word "request" right there in your application code will remind you that
    # these variables only affect the current request, not all threads.
    #
    # Given a block, temporarily sets the given `options`, executes the block,
    # and returns the value of the block.
    #
    # Without a block, this currently just returns `PaperTrail::Request`.
    # However, please do not use `PaperTrail::Request` directly. Currently,
    # `Request` is a `Module`, but in the future it is quite possible we may
    # make it a `Class`. If we make such a choice, we will not provide any
    # warning and will not treat it as a breaking change. You've been warned :)
    #
    # @api public
    #
    # source://paper_trail//lib/paper_trail.rb#77
    def request(options = T.unsafe(nil), &block); end

    # Get the PaperTrail serializer used by all threads.
    #
    # @api public
    #
    # source://paper_trail//lib/paper_trail.rb#99
    def serializer; end

    # Set the PaperTrail serializer. This setting affects all threads.
    #
    # @api public
    #
    # source://paper_trail//lib/paper_trail.rb#93
    def serializer=(value); end

    # Set the field which records when a version was created.
    #
    # @api public
    # @raise [Error]
    #
    # source://paper_trail//lib/paper_trail.rb#87
    def timestamp_field=(_field_name); end

    # @api public
    #
    # source://paper_trail//lib/paper_trail.rb#114
    def version; end
  end
end

# Utilities for deleting version records.
#
# source://paper_trail//lib/paper_trail/cleaner.rb#5
module PaperTrail::Cleaner
  # Destroys all but the most recent version(s) for items on a given date
  # (or on all dates). Useful for deleting drafts.
  #
  # Options:
  #
  # - :keeping - An `integer` indicating the number of versions to be kept for
  #   each item per date. Defaults to `1`. The most recent matching versions
  #   are kept.
  # - :date - Should either be a `Date` object specifying which date to
  #   destroy versions for or `:all`, which will specify that all dates
  #   should be cleaned. Defaults to `:all`.
  # - :item_id - The `id` for the item to be cleaned on, or `nil`, which
  #   causes all items to be cleaned. Defaults to `nil`.
  #
  # source://paper_trail//lib/paper_trail/cleaner.rb#20
  def clean_versions!(options = T.unsafe(nil)); end

  private

  # Returns a hash of versions grouped by the `item_id` attribute formatted
  # like this: {:item_id => PaperTrail::Version}. If `item_id` or `date` is
  # set, versions will be narrowed to those pointing at items with those ids
  # that were created on specified date. Versions are returned in
  # chronological order.
  #
  # source://paper_trail//lib/paper_trail/cleaner.rb#39
  def gather_versions(item_id = T.unsafe(nil), date = T.unsafe(nil)); end

  # Given an array of versions, returns a hash mapping dates to arrays of
  # versions.
  #
  # @api private
  #
  # source://paper_trail//lib/paper_trail/cleaner.rb#56
  def group_versions_by_date(versions); end
end

# Rails does not follow SemVer, makes breaking changes in minor versions.
# Breaking changes are expected, and are generally good for the rails
# ecosystem. However, they often require dozens of hours to fix, even with the
# [help of experts](https://github.com/paper-trail-gem/paper_trail/pull/899).
#
# It is not safe to assume that a new version of rails will be compatible with
# PaperTrail. PT is only compatible with the versions of rails that it is
# tested against. See `.github/workflows/test.yml`.
#
# However, as of
# [#1213](https://github.com/paper-trail-gem/paper_trail/pull/1213) our
# gemspec allows installation with newer, incompatible rails versions. We hope
# this will make it easier for contributors to work on compatibility with
# newer rails versions. Most PT users should avoid incompatible rails
# versions.
#
# source://paper_trail//lib/paper_trail/compatibility.rb#19
module PaperTrail::Compatibility
  class << self
    # Normal users need a warning if they accidentally install an incompatible
    # version of ActiveRecord. Contributors can silence this warning with an
    # environment variable.
    #
    # @raise [::TypeError]
    #
    # source://paper_trail//lib/paper_trail/compatibility.rb#35
    def check_activerecord(ar_version); end
  end
end

# enforced in gemspec
#
# source://paper_trail//lib/paper_trail/compatibility.rb#20
PaperTrail::Compatibility::ACTIVERECORD_GTE = T.let(T.unsafe(nil), String)

# not enforced in gemspec
#
# source://paper_trail//lib/paper_trail/compatibility.rb#21
PaperTrail::Compatibility::ACTIVERECORD_LT = T.let(T.unsafe(nil), String)

# source://paper_trail//lib/paper_trail/compatibility.rb#23
PaperTrail::Compatibility::E_INCOMPATIBLE_AR = T.let(T.unsafe(nil), String)

# Global configuration affecting all threads. Some thread-specific
# configuration can be found in `paper_trail.rb`, others in `controller.rb`.
#
# source://paper_trail//lib/paper_trail/config.rb#9
class PaperTrail::Config
  include ::Singleton
  extend ::Singleton::SingletonClassMethods

  # @return [Config] a new instance of Config
  #
  # source://paper_trail//lib/paper_trail/config.rb#21
  def initialize; end

  # Returns the value of attribute association_reify_error_behaviour.
  #
  # source://paper_trail//lib/paper_trail/config.rb#12
  def association_reify_error_behaviour; end

  # Sets the attribute association_reify_error_behaviour
  #
  # @param value the value to set the attribute association_reify_error_behaviour to.
  #
  # source://paper_trail//lib/paper_trail/config.rb#12
  def association_reify_error_behaviour=(_arg0); end

  # Indicates whether PaperTrail is on or off. Default: true.
  #
  # source://paper_trail//lib/paper_trail/config.rb#33
  def enabled; end

  # source://paper_trail//lib/paper_trail/config.rb#37
  def enabled=(enable); end

  # Returns the value of attribute has_paper_trail_defaults.
  #
  # source://paper_trail//lib/paper_trail/config.rb#12
  def has_paper_trail_defaults; end

  # Sets the attribute has_paper_trail_defaults
  #
  # @param value the value to set the attribute has_paper_trail_defaults to.
  #
  # source://paper_trail//lib/paper_trail/config.rb#12
  def has_paper_trail_defaults=(_arg0); end

  # Returns the value of attribute object_changes_adapter.
  #
  # source://paper_trail//lib/paper_trail/config.rb#12
  def object_changes_adapter; end

  # Sets the attribute object_changes_adapter
  #
  # @param value the value to set the attribute object_changes_adapter to.
  #
  # source://paper_trail//lib/paper_trail/config.rb#12
  def object_changes_adapter=(_arg0); end

  # Returns the value of attribute serializer.
  #
  # source://paper_trail//lib/paper_trail/config.rb#12
  def serializer; end

  # Sets the attribute serializer
  #
  # @param value the value to set the attribute serializer to.
  #
  # source://paper_trail//lib/paper_trail/config.rb#12
  def serializer=(_arg0); end

  # Returns the value of attribute version_error_behavior.
  #
  # source://paper_trail//lib/paper_trail/config.rb#12
  def version_error_behavior; end

  # Sets the attribute version_error_behavior
  #
  # @param value the value to set the attribute version_error_behavior to.
  #
  # source://paper_trail//lib/paper_trail/config.rb#12
  def version_error_behavior=(_arg0); end

  # Returns the value of attribute version_limit.
  #
  # source://paper_trail//lib/paper_trail/config.rb#12
  def version_limit; end

  # Sets the attribute version_limit
  #
  # @param value the value to set the attribute version_limit to.
  #
  # source://paper_trail//lib/paper_trail/config.rb#12
  def version_limit=(_arg0); end

  class << self
    private

    def allocate; end
    def new(*_arg0); end
  end
end

# source://paper_trail//lib/paper_trail.rb#29
PaperTrail::E_TIMESTAMP_FIELD_CONFIG = T.let(T.unsafe(nil), String)

# Generic PaperTrail exception.
#
# @api public
#
# source://paper_trail//lib/paper_trail/errors.rb#6
class PaperTrail::Error < ::StandardError; end

# An unexpected option, perhaps a typo, was passed to a public API method.
#
# @api public
#
# source://paper_trail//lib/paper_trail/errors.rb#11
class PaperTrail::InvalidOption < ::PaperTrail::Error; end

# Represents code to load within Rails framework. See documentation in
# `railties/lib/rails/railtie.rb`.
#
# @api private
#
# source://paper_trail//lib/paper_trail/frameworks/rails/railtie.rb#7
class PaperTrail::Railtie < ::Rails::Railtie; end

# Represents the history of a single record.
#
# @api private
#
# source://paper_trail//lib/paper_trail/record_history.rb#6
class PaperTrail::RecordHistory
  # @api private
  # @param versions - ActiveRecord::Relation - All versions of the record.
  # @param version_class - Class - Usually PaperTrail::Version,
  #   but it could also be a custom version class.
  # @return [RecordHistory] a new instance of RecordHistory
  #
  # source://paper_trail//lib/paper_trail/record_history.rb#11
  def initialize(versions, version_class); end

  # Returns ordinal position of `version` in `sequence`.
  #
  # @api private
  #
  # source://paper_trail//lib/paper_trail/record_history.rb#18
  def index(version); end

  private

  # @api private
  # @return - Arel::Attribute - Attribute representing the primary key
  #   of the version table. The column's data type is usually a serial
  #   integer (the rails convention) but not always.
  #
  # source://paper_trail//lib/paper_trail/record_history.rb#40
  def primary_key; end

  # Returns `@versions` in chronological order.
  #
  # @api private
  #
  # source://paper_trail//lib/paper_trail/record_history.rb#26
  def sequence; end

  # @api private
  # @return - Arel::Table - The version table, usually named `versions`, but
  #   not always.
  #
  # source://paper_trail//lib/paper_trail/record_history.rb#47
  def table; end
end

# Manages variables that affect the current HTTP request, such as `whodunnit`.
#
# Please do not use `PaperTrail::Request` directly, use `PaperTrail.request`.
# Currently, `Request` is a `Module`, but in the future it is quite possible
# we may make it a `Class`. If we make such a choice, we will not provide any
# warning and will not treat it as a breaking change. You've been warned :)
#
# @api private
#
# source://paper_trail//lib/paper_trail/request.rb#14
module PaperTrail::Request
  class << self
    # Returns the data from the controller that you want PaperTrail to store.
    # See also `PaperTrail::Rails::Controller#info_for_paper_trail`.
    #
    #   PaperTrail.request.controller_info = { ip: request_user_ip }
    #   PaperTrail.request.controller_info # => { ip: '127.0.0.1' }
    #
    # @api public
    #
    # source://paper_trail//lib/paper_trail/request.rb#34
    def controller_info; end

    # Sets any data from the controller that you want PaperTrail to store.
    # See also `PaperTrail::Rails::Controller#info_for_paper_trail`.
    #
    #   PaperTrail.request.controller_info = { ip: request_user_ip }
    #   PaperTrail.request.controller_info # => { ip: '127.0.0.1' }
    #
    # @api public
    #
    # source://paper_trail//lib/paper_trail/request.rb#23
    def controller_info=(value); end

    # Switches PaperTrail off for the given model.
    #
    # @api public
    #
    # source://paper_trail//lib/paper_trail/request.rb#40
    def disable_model(model_class); end

    # Switches PaperTrail on for the given model.
    #
    # @api public
    #
    # source://paper_trail//lib/paper_trail/request.rb#46
    def enable_model(model_class); end

    # Sets whether PaperTrail is enabled or disabled for the current request.
    #
    # @api public
    #
    # source://paper_trail//lib/paper_trail/request.rb#52
    def enabled=(value); end

    # Returns `true` if PaperTrail is enabled for the request, `false` otherwise.
    # See `PaperTrail::Rails::Controller#paper_trail_enabled_for_controller`.
    #
    # @api public
    # @return [Boolean]
    #
    # source://paper_trail//lib/paper_trail/request.rb#59
    def enabled?; end

    # Sets whether PaperTrail is enabled or disabled for this model in the
    # current request.
    #
    # @api public
    #
    # source://paper_trail//lib/paper_trail/request.rb#66
    def enabled_for_model(model, value); end

    # Returns `true` if PaperTrail is enabled for this model in the current
    # request, `false` otherwise.
    #
    # @api public
    # @return [Boolean]
    #
    # source://paper_trail//lib/paper_trail/request.rb#73
    def enabled_for_model?(model); end

    # Returns who is reponsible for any changes that occur during request.
    #
    # @api public
    #
    # source://paper_trail//lib/paper_trail/request.rb#107
    def whodunnit; end

    # Sets who is responsible for any changes that occur during request. You
    # would normally use this in a migration or on the console, when working
    # with models directly.
    #
    # `value` is usually a string, the name of a person, but you can set
    # anything that responds to `to_s`. You can also set a Proc, which will
    # not be evaluated until `whodunnit` is called later, usually right before
    # inserting a `Version` record.
    #
    # @api public
    #
    # source://paper_trail//lib/paper_trail/request.rb#100
    def whodunnit=(value); end

    # Temporarily set `options` and execute a block.
    #
    # @api private
    #
    # source://paper_trail//lib/paper_trail/request.rb#80
    def with(options); end

    private

    # @api private
    #
    # source://paper_trail//lib/paper_trail/request.rb#115
    def merge(options); end

    # @api private
    #
    # source://paper_trail//lib/paper_trail/request.rb#122
    def set(options); end

    # Returns a Hash, initializing with default values if necessary.
    #
    # @api private
    #
    # source://paper_trail//lib/paper_trail/request.rb#129
    def store; end

    # Returns a deep copy of the internal hash from our RequestStore. Keys are
    # all symbols. Values are mostly primitives, but whodunnit can be a Proc.
    # We cannot use Marshal.dump here because it doesn't support Proc. It is
    # unclear exactly how `deep_dup` handles a Proc, but it doesn't complain.
    #
    # @api private
    #
    # source://paper_trail//lib/paper_trail/request.rb#140
    def to_h; end

    # Provide a helpful error message if someone has a typo in one of their
    # option keys. We don't validate option values here. That's traditionally
    # been handled with casting (`to_s`, `!!`) in the accessor method.
    #
    # @api private
    #
    # source://paper_trail//lib/paper_trail/request.rb#148
    def validate_public_options(options); end
  end
end

# source://paper_trail//lib/paper_trail/serializers/yaml.rb#6
module PaperTrail::Serializers; end

# An alternate serializer for, e.g. `versions.object`.
#
# source://paper_trail//lib/paper_trail/serializers/json.rb#6
module PaperTrail::Serializers::JSON
  extend ::PaperTrail::Serializers::JSON

  # source://paper_trail//lib/paper_trail/serializers/json.rb#13
  def dump(object); end

  # source://paper_trail//lib/paper_trail/serializers/json.rb#9
  def load(string); end

  # Returns a SQL LIKE condition to be used to match the given field and
  # value in the serialized object.
  #
  # source://paper_trail//lib/paper_trail/serializers/json.rb#19
  def where_object_condition(arel_field, field, value); end
end

# The default serializer for, e.g. `versions.object`.
#
# source://paper_trail//lib/paper_trail/serializers/yaml.rb#8
module PaperTrail::Serializers::YAML
  extend ::PaperTrail::Serializers::YAML

  # `recordable_object` `object` will be a plain `Hash`. However, due to
  # recent [memory optimizations](https://github.com/paper-trail-gem/paper_trail/pull/1189),
  # when coming from `recordable_object_changes`, it will be a `HashWithIndifferentAccess`.
  #
  # @param object [Hash | HashWithIndifferentAccess] - Coming from
  #
  # source://paper_trail//lib/paper_trail/serializers/yaml.rb#29
  def dump(object); end

  # source://paper_trail//lib/paper_trail/serializers/yaml.rb#11
  def load(string); end

  # Returns a SQL LIKE condition to be used to match the given field and
  # value in the serialized object.
  #
  # source://paper_trail//lib/paper_trail/serializers/yaml.rb#36
  def where_object_condition(arel_field, field, value); end

  private

  # @return [Boolean]
  #
  # source://paper_trail//lib/paper_trail/serializers/yaml.rb#42
  def use_safe_load?; end

  # source://paper_trail//lib/paper_trail/serializers/yaml.rb#55
  def yaml_column_permitted_classes; end
end

# The application's database column type is not supported.
#
# @api public
#
# source://paper_trail//lib/paper_trail/errors.rb#21
class PaperTrail::UnsupportedColumnType < ::PaperTrail::UnsupportedSchema
  # @api public
  # @return [UnsupportedColumnType] a new instance of UnsupportedColumnType
  #
  # source://paper_trail//lib/paper_trail/errors.rb#22
  def initialize(method:, expected:, actual:); end
end

# The application's database schema is not supported.
#
# @api public
#
# source://paper_trail//lib/paper_trail/errors.rb#16
class PaperTrail::UnsupportedSchema < ::PaperTrail::Error; end

# The version number of the paper_trail gem. Not to be confused with
# `PaperTrail::Version`. Ruby constants are case-sensitive, apparently,
# and they are two different modules! It would be nice to remove `VERSION`,
# because of this confusion, but it's not worth the breaking change.
# People are encouraged to use `PaperTrail.gem_version` instead.
#
# source://paper_trail//lib/paper_trail/version_number.rb#9
module PaperTrail::VERSION
  class << self
    # source://paper_trail//lib/paper_trail/version_number.rb#19
    def to_s; end
  end
end

# source://paper_trail//lib/paper_trail/version_number.rb#10
PaperTrail::VERSION::MAJOR = T.let(T.unsafe(nil), Integer)

# source://paper_trail//lib/paper_trail/version_number.rb#11
PaperTrail::VERSION::MINOR = T.let(T.unsafe(nil), Integer)

# Set PRE to nil unless it's a pre-release (beta, rc, etc.)
#
# source://paper_trail//lib/paper_trail/version_number.rb#15
PaperTrail::VERSION::PRE = T.let(T.unsafe(nil), T.untyped)

# source://paper_trail//lib/paper_trail/version_number.rb#17
PaperTrail::VERSION::STRING = T.let(T.unsafe(nil), String)

# source://paper_trail//lib/paper_trail/version_number.rb#12
PaperTrail::VERSION::TINY = T.let(T.unsafe(nil), Integer)
