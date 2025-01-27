# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `scenic` gem.
# Please instead update this file by running `bin/tapioca gem scenic`.


# Scenic adds methods `ActiveRecord::Migration` to create and manage database
# views in Rails applications.
#
# source://scenic//lib/scenic/configuration.rb#1
module Scenic
  class << self
    # @return [Scenic::Configuration] Scenic's current configuration
    #
    # source://scenic//lib/scenic/configuration.rb#15
    def configuration; end

    # Set Scenic's configuration
    #
    # @param config [Scenic::Configuration]
    #
    # source://scenic//lib/scenic/configuration.rb#22
    def configuration=(config); end

    # Modify Scenic's current configuration
    #
    # ```
    # Scenic.configure do |config|
    #   config.database = Scenic::Adapters::Postgres.new
    # end
    # ```
    #
    # @yieldparam config [Scenic::Configuration] current Scenic config
    #
    # source://scenic//lib/scenic/configuration.rb#34
    def configure; end

    # The current database adapter used by Scenic.
    #
    # This defaults to {Adapters::Postgres} but can be overridden
    # via {Configuration}.
    #
    # source://scenic//lib/scenic.rb#30
    def database; end

    # Hooks Scenic into Rails.
    #
    # Enables scenic migration methods, migration reversability, and `schema.rb`
    # dumping.
    #
    # source://scenic//lib/scenic.rb#20
    def load; end
  end
end

# Scenic database adapters.
#
# Scenic ships with a Postgres adapter only but can be extended with
# additional adapters. The {Adapters::Postgres} adapter provides the
# interface.
#
# source://scenic//lib/scenic/adapters/postgres/connection.rb#2
module Scenic::Adapters; end

# An adapter for managing Postgres views.
#
# These methods are used interally by Scenic and are not intended for direct
# use. Methods that alter database schema are intended to be called via
# {Statements}, while {#refresh_materialized_view} is called via
# {Scenic.database}.
#
# The methods are documented here for insight into specifics of how Scenic
# integrates with Postgres and the responsibilities of {Adapters}.
#
# source://scenic//lib/scenic/adapters/postgres/connection.rb#3
class Scenic::Adapters::Postgres
  # Creates an instance of the Scenic Postgres adapter.
  #
  # This is the default adapter for Scenic. Configuring it via
  # {Scenic.configure} is not required, but the example below shows how one
  # would explicitly set it.
  #
  # @example
  #   Scenic.configure do |config|
  #   config.database = Scenic::Adapters::Postgres.new
  #   end
  # @param connectable [#connection] An object that returns the connection
  #   for Scenic to use. Defaults to `ActiveRecord::Base`.
  # @return [Postgres] a new instance of Postgres
  #
  # source://scenic//lib/scenic/adapters/postgres.rb#38
  def initialize(connectable = T.unsafe(nil)); end

  # Creates a materialized view in the database
  #
  # This is typically called in a migration via {Statements#create_view}.
  #
  # @param name The name of the materialized view to create
  # @param sql_definition The SQL schema that defines the materialized view.
  # @param no_data [Boolean] Default: false. Set to true to create
  #   materialized view without running the associated query. You will need
  #   to perform a non-concurrent refresh to populate with data.
  # @raise [MaterializedViewsNotSupportedError] if the version of Postgres
  #   in use does not support materialized views.
  # @return [void]
  #
  # source://scenic//lib/scenic/adapters/postgres.rb#135
  def create_materialized_view(name, sql_definition, no_data: T.unsafe(nil)); end

  # Creates a view in the database.
  #
  # This is typically called in a migration via {Statements#create_view}.
  #
  # @param name The name of the view to create
  # @param sql_definition The SQL schema for the view.
  # @return [void]
  #
  # source://scenic//lib/scenic/adapters/postgres.rb#60
  def create_view(name, sql_definition); end

  # Drops a materialized view in the database
  #
  # This is typically called in a migration via {Statements#update_view}.
  #
  # @param name The name of the materialized view to drop.
  # @raise [MaterializedViewsNotSupportedError] if the version of Postgres
  #   in use does not support materialized views.
  # @return [void]
  #
  # source://scenic//lib/scenic/adapters/postgres.rb#181
  def drop_materialized_view(name); end

  # Drops the named view from the database
  #
  # This is typically called in a migration via {Statements#drop_view}.
  #
  # @param name The name of the view to drop
  # @return [void]
  #
  # source://scenic//lib/scenic/adapters/postgres.rb#117
  def drop_view(name); end

  # source://scenic//lib/scenic/adapters/postgres.rb#253
  def execute(*_arg0, **_arg1, &_arg2); end

  # True if supplied relation name is populated. Useful for checking the
  # state of materialized views which may error if created `WITH NO DATA`
  # and used before they are refreshed. True for all other relation types.
  #
  # @param name The name of the relation
  # @raise [MaterializedViewsNotSupportedError] if the version of Postgres
  #   in use does not support materialized views.
  # @return [boolean]
  #
  # source://scenic//lib/scenic/adapters/postgres.rb#235
  def populated?(name); end

  # source://scenic//lib/scenic/adapters/postgres.rb#253
  def quote_table_name(*_arg0, **_arg1, &_arg2); end

  # Refreshes a materialized view from its SQL schema.
  #
  # This is typically called from application code via {Scenic.database}.
  #
  # @example Non-concurrent refresh
  #   Scenic.database.refresh_materialized_view(:search_results)
  # @example Concurrent refresh
  #   Scenic.database.refresh_materialized_view(:posts, concurrently: true)
  # @param name The name of the materialized view to refresh.
  # @param concurrently [Boolean] Whether the refreshs hould happen
  #   concurrently or not. A concurrent refresh allows the view to be
  #   refreshed without locking the view for select but requires that the
  #   table have at least one unique index that covers all rows. Attempts to
  #   refresh concurrently without a unique index will raise a descriptive
  #   error.
  # @raise [MaterializedViewsNotSupportedError] if the version of Postgres
  #   in use does not support materialized views.
  # @raise [ConcurrentRefreshesNotSupportedError] when attempting a
  #   concurrent refresh on version of Postgres that does not support
  #   concurrent materialized view refreshes.
  # @return [void]
  #
  # source://scenic//lib/scenic/adapters/postgres.rb#210
  def refresh_materialized_view(name, concurrently: T.unsafe(nil), cascade: T.unsafe(nil)); end

  # Replaces a view in the database using `CREATE OR REPLACE VIEW`.
  #
  # This results in a `CREATE OR REPLACE VIEW`. Most of the time the
  # explicitness of the two step process used in {#update_view} is preferred
  # to `CREATE OR REPLACE VIEW` because the former ensures that the view you
  # are trying to update did, in fact, already exist. Additionally,
  # `CREATE OR REPLACE VIEW` is allowed only to add new columns to the end
  # of an existing view schema. Existing columns cannot be re-ordered,
  # removed, or have their types changed. Drop and create overcomes this
  # limitation as well.
  #
  # However, when there is a tangled dependency tree
  # `CREATE OR REPLACE VIEW` can be preferable.
  #
  # This is typically called in a migration via
  # {Statements#replace_view}.
  #
  # @param name The name of the view to update
  # @param sql_definition The SQL schema for the updated view.
  # @return [void]
  #
  # source://scenic//lib/scenic/adapters/postgres.rb#106
  def replace_view(name, sql_definition); end

  # Updates a materialized view in the database.
  #
  # Drops and recreates the materialized view. Attempts to maintain all
  # previously existing and still applicable indexes on the materialized
  # view after the view is recreated.
  #
  # This is typically called in a migration via {Statements#update_view}.
  #
  # @param name The name of the view to update
  # @param sql_definition The SQL schema for the updated view.
  # @param no_data [Boolean] Default: false. Set to true to create
  #   materialized view without running the associated query. You will need
  #   to perform a non-concurrent refresh to populate with data.
  # @raise [MaterializedViewsNotSupportedError] if the version of Postgres
  #   in use does not support materialized views.
  # @return [void]
  #
  # source://scenic//lib/scenic/adapters/postgres.rb#163
  def update_materialized_view(name, sql_definition, no_data: T.unsafe(nil)); end

  # Updates a view in the database.
  #
  # This results in a {#drop_view} followed by a {#create_view}. The
  # explicitness of that two step process is preferred to `CREATE OR
  # REPLACE VIEW` because the former ensures that the view you are trying to
  # update did, in fact, already exist. Additionally, `CREATE OR REPLACE
  # VIEW` is allowed only to add new columns to the end of an existing
  # view schema. Existing columns cannot be re-ordered, removed, or have
  # their types changed. Drop and create overcomes this limitation as well.
  #
  # This is typically called in a migration via {Statements#update_view}.
  #
  # @param name The name of the view to update
  # @param sql_definition The SQL schema for the updated view.
  # @return [void]
  #
  # source://scenic//lib/scenic/adapters/postgres.rb#80
  def update_view(name, sql_definition); end

  # Returns an array of views in the database.
  #
  # This collection of views is used by the [Scenic::SchemaDumper] to
  # populate the `schema.rb` file.
  #
  # @return [Array<Scenic::View>]
  #
  # source://scenic//lib/scenic/adapters/postgres.rb#48
  def views; end

  private

  # Returns the value of attribute connectable.
  #
  # source://scenic//lib/scenic/adapters/postgres.rb#252
  def connectable; end

  # source://scenic//lib/scenic/adapters/postgres.rb#255
  def connection; end

  # source://scenic//lib/scenic/adapters/postgres.rb#265
  def raise_unless_concurrent_refresh_supported; end

  # source://scenic//lib/scenic/adapters/postgres.rb#259
  def raise_unless_materialized_views_supported; end

  # source://scenic//lib/scenic/adapters/postgres.rb#271
  def refresh_dependencies_for(name, concurrently: T.unsafe(nil)); end
end

# Raised when attempting a concurrent materialized view refresh on a
# database version that does not support that.
#
# Concurrent materialized view refreshes are supported on Postgres 9.4 or
# newer.
#
# source://scenic//lib/scenic/adapters/postgres/errors.rb#19
class Scenic::Adapters::Postgres::ConcurrentRefreshesNotSupportedError < ::StandardError
  # @return [ConcurrentRefreshesNotSupportedError] a new instance of ConcurrentRefreshesNotSupportedError
  #
  # source://scenic//lib/scenic/adapters/postgres/errors.rb#20
  def initialize; end
end

# Decorates an ActiveRecord connection with methods that help determine
# the connections capabilities.
#
# Every attempt is made to use the versions of these methods defined by
# Rails where they are available and public before falling back to our own
# implementations for older Rails versions.
#
# @api private
#
# source://scenic//lib/scenic/adapters/postgres/connection.rb#12
class Scenic::Adapters::Postgres::Connection < ::SimpleDelegator
  # An integer representing the version of Postgres we're connected to.
  #
  # postgresql_version is public in Rails 5, but protected in earlier
  # versions.
  #
  # @api private
  # @return [Integer]
  #
  # source://scenic//lib/scenic/adapters/postgres/connection.rb#41
  def postgresql_version; end

  # True if the connection supports concurrent refreshes of materialized
  # views.
  #
  # @api private
  # @return [Boolean]
  #
  # source://scenic//lib/scenic/adapters/postgres/connection.rb#31
  def supports_concurrent_refreshes?; end

  # True if the connection supports materialized views.
  #
  # Delegates to the method of the same name if it is already defined on
  # the connection. This is the case for Rails 4.2 or higher.
  #
  # @api private
  # @return [Boolean]
  #
  # source://scenic//lib/scenic/adapters/postgres/connection.rb#19
  def supports_materialized_views?; end

  private

  # @api private
  #
  # source://scenic//lib/scenic/adapters/postgres/connection.rb#51
  def undecorated_connection; end
end

# Updating a materialized view causes the view to be dropped and
# recreated. This causes any associated indexes to be dropped as well.
# This object can be used to capture the existing indexes before the drop
# and then reapply appropriate indexes following the create.
#
# @api private
#
# source://scenic//lib/scenic/adapters/postgres/index_reapplication.rb#10
class Scenic::Adapters::Postgres::IndexReapplication
  # Creates the index reapplication object.
  #
  # @api private
  # @param connection [Connection] The connection to execute SQL against.
  # @param speaker [#say] (ActiveRecord::Migration) The object used for
  #   logging the results of reapplying indexes.
  # @return [IndexReapplication] a new instance of IndexReapplication
  #
  # source://scenic//lib/scenic/adapters/postgres/index_reapplication.rb#16
  def initialize(connection:, speaker: T.unsafe(nil)); end

  # Caches indexes on the provided object before executing the block and
  # then reapplying the indexes. Each recreated or skipped index is
  # announced to STDOUT by default. This can be overridden in the
  # constructor.
  #
  # @api private
  # @param name The name of the object we are reapplying indexes on.
  # @return [void]
  # @yield Operations to perform before reapplying indexes.
  #
  # source://scenic//lib/scenic/adapters/postgres/index_reapplication.rb#30
  def on(name); end

  private

  # @api private
  #
  # source://scenic//lib/scenic/adapters/postgres/index_reapplication.rb#40
  def connection; end

  # @api private
  #
  # source://scenic//lib/scenic/adapters/postgres/index_reapplication.rb#64
  def say(message); end

  # @api private
  #
  # source://scenic//lib/scenic/adapters/postgres/index_reapplication.rb#40
  def speaker; end

  # @api private
  #
  # source://scenic//lib/scenic/adapters/postgres/index_reapplication.rb#42
  def try_index_create(index); end

  # @api private
  #
  # source://scenic//lib/scenic/adapters/postgres/index_reapplication.rb#54
  def with_savepoint(name); end
end

# Fetches indexes on objects from the Postgres connection.
#
# @api private
#
# source://scenic//lib/scenic/adapters/postgres/indexes.rb#7
class Scenic::Adapters::Postgres::Indexes
  # @api private
  # @return [Indexes] a new instance of Indexes
  #
  # source://scenic//lib/scenic/adapters/postgres/indexes.rb#8
  def initialize(connection:); end

  # Indexes on the provided object.
  #
  # @api private
  # @param name [String] The name of the object we want indexes from.
  # @return [Array<Scenic::Index>]
  #
  # source://scenic//lib/scenic/adapters/postgres/indexes.rb#16
  def on(name); end

  # source://scenic//lib/scenic/adapters/postgres/indexes.rb#23
  def quote_table_name(*_arg0, **_arg1, &_arg2); end

  private

  # @api private
  #
  # source://scenic//lib/scenic/adapters/postgres/indexes.rb#22
  def connection; end

  # @api private
  #
  # source://scenic//lib/scenic/adapters/postgres/indexes.rb#43
  def index_from_database(result); end

  # @api private
  #
  # source://scenic//lib/scenic/adapters/postgres/indexes.rb#25
  def indexes_on(name); end
end

# Raised when a materialized view operation is attempted on a database
# version that does not support materialized views.
#
# Materialized views are supported on Postgres 9.3 or newer.
#
# source://scenic//lib/scenic/adapters/postgres/errors.rb#8
class Scenic::Adapters::Postgres::MaterializedViewsNotSupportedError < ::StandardError
  # @return [MaterializedViewsNotSupportedError] a new instance of MaterializedViewsNotSupportedError
  #
  # source://scenic//lib/scenic/adapters/postgres/errors.rb#9
  def initialize; end
end

# source://scenic//lib/scenic/adapters/postgres/refresh_dependencies.rb#4
class Scenic::Adapters::Postgres::RefreshDependencies
  # @return [RefreshDependencies] a new instance of RefreshDependencies
  #
  # source://scenic//lib/scenic/adapters/postgres/refresh_dependencies.rb#9
  def initialize(name, adapter, connection, concurrently:); end

  # source://scenic//lib/scenic/adapters/postgres/refresh_dependencies.rb#16
  def call; end

  private

  # Returns the value of attribute adapter.
  #
  # source://scenic//lib/scenic/adapters/postgres/refresh_dependencies.rb#27
  def adapter; end

  # Returns the value of attribute concurrently.
  #
  # source://scenic//lib/scenic/adapters/postgres/refresh_dependencies.rb#27
  def concurrently; end

  # Returns the value of attribute connection.
  #
  # source://scenic//lib/scenic/adapters/postgres/refresh_dependencies.rb#27
  def connection; end

  # source://scenic//lib/scenic/adapters/postgres/refresh_dependencies.rb#109
  def dependencies; end

  # Returns the value of attribute name.
  #
  # source://scenic//lib/scenic/adapters/postgres/refresh_dependencies.rb#27
  def name; end

  class << self
    # source://scenic//lib/scenic/adapters/postgres/refresh_dependencies.rb#5
    def call(name, adapter, connection, concurrently: T.unsafe(nil)); end
  end
end

# source://scenic//lib/scenic/adapters/postgres/refresh_dependencies.rb#90
Scenic::Adapters::Postgres::RefreshDependencies::DEPENDENCY_SQL = T.let(T.unsafe(nil), String)

# source://scenic//lib/scenic/adapters/postgres/refresh_dependencies.rb#29
class Scenic::Adapters::Postgres::RefreshDependencies::DependencyParser
  # @return [DependencyParser] a new instance of DependencyParser
  #
  # source://scenic//lib/scenic/adapters/postgres/refresh_dependencies.rb#30
  def initialize(raw_dependencies, view_to_refresh); end

  # We're given an array from the SQL query that looks kind of like this
  # [["view_name", "{'dependency_1', 'dependency_2'}"]]
  #
  # We need to parse that into a more easy to understand data type so we
  # can use the Tsort module from the Standard Library to topologically
  # sort those out so we can refresh in the correct order, so we parse
  # that raw data into a hash.
  #
  # Then, once Tsort has worked it magic, we're given a sorted 1-D array
  # ["dependency_1", "dependency_2", "view_name"]
  #
  # So we then need to slice off just the bit leading up to the view
  # that we're refreshing, so we find where in the topologically sorted
  # array our given view is, and return all the dependencies up to that
  # point.
  #
  # source://scenic//lib/scenic/adapters/postgres/refresh_dependencies.rb#50
  def to_sorted_array; end

  private

  # source://scenic//lib/scenic/adapters/postgres/refresh_dependencies.rb#73
  def parse_to_hash(dependency_rows); end

  # Returns the value of attribute raw_dependencies.
  #
  # source://scenic//lib/scenic/adapters/postgres/refresh_dependencies.rb#71
  def raw_dependencies; end

  # source://scenic//lib/scenic/adapters/postgres/refresh_dependencies.rb#83
  def tsort(hash); end

  # Returns the value of attribute view_to_refresh.
  #
  # source://scenic//lib/scenic/adapters/postgres/refresh_dependencies.rb#71
  def view_to_refresh; end
end

# Fetches defined views from the postgres connection.
#
# @api private
#
# source://scenic//lib/scenic/adapters/postgres/views.rb#6
class Scenic::Adapters::Postgres::Views
  # @api private
  # @return [Views] a new instance of Views
  #
  # source://scenic//lib/scenic/adapters/postgres/views.rb#7
  def initialize(connection); end

  # All of the views that this connection has defined.
  #
  # This will include materialized views if those are supported by the
  # connection.
  #
  # @api private
  # @return [Array<Scenic::View>]
  #
  # source://scenic//lib/scenic/adapters/postgres/views.rb#17
  def all; end

  private

  # @api private
  #
  # source://scenic//lib/scenic/adapters/postgres/views.rb#23
  def connection; end

  # @api private
  #
  # source://scenic//lib/scenic/adapters/postgres/views.rb#59
  def pg_identifier(name); end

  # @api private
  #
  # source://scenic//lib/scenic/adapters/postgres/views.rb#65
  def pgconn; end

  # @api private
  #
  # source://scenic//lib/scenic/adapters/postgres/views.rb#43
  def to_scenic_view(result); end

  # @api private
  #
  # source://scenic//lib/scenic/adapters/postgres/views.rb#25
  def views_from_postgres; end
end

# @api private
#
# source://scenic//lib/scenic/command_recorder/statement_arguments.rb#2
module Scenic::CommandRecorder
  # @api private
  #
  # source://scenic//lib/scenic/command_recorder.rb#6
  def create_view(*args, **_arg1); end

  # @api private
  #
  # source://scenic//lib/scenic/command_recorder.rb#11
  def drop_view(*args, **_arg1); end

  # @api private
  #
  # source://scenic//lib/scenic/command_recorder.rb#26
  def invert_create_view(args); end

  # @api private
  #
  # source://scenic//lib/scenic/command_recorder.rb#31
  def invert_drop_view(args); end

  # @api private
  #
  # source://scenic//lib/scenic/command_recorder.rb#39
  def invert_replace_view(args); end

  # @api private
  #
  # source://scenic//lib/scenic/command_recorder.rb#35
  def invert_update_view(args); end

  # @api private
  #
  # source://scenic//lib/scenic/command_recorder.rb#21
  def replace_view(*args, **_arg1); end

  # @api private
  #
  # source://scenic//lib/scenic/command_recorder.rb#16
  def update_view(*args, **_arg1); end

  private

  # @api private
  #
  # source://scenic//lib/scenic/command_recorder.rb#45
  def perform_scenic_inversion(method, args); end
end

# @api private
#
# source://scenic//lib/scenic/command_recorder/statement_arguments.rb#4
class Scenic::CommandRecorder::StatementArguments
  # @api private
  # @return [StatementArguments] a new instance of StatementArguments
  #
  # source://scenic//lib/scenic/command_recorder/statement_arguments.rb#5
  def initialize(args); end

  # @api private
  #
  # source://scenic//lib/scenic/command_recorder/statement_arguments.rb#21
  def invert_version; end

  # @api private
  #
  # source://scenic//lib/scenic/command_recorder/statement_arguments.rb#25
  def remove_version; end

  # @api private
  #
  # source://scenic//lib/scenic/command_recorder/statement_arguments.rb#17
  def revert_to_version; end

  # @api private
  #
  # source://scenic//lib/scenic/command_recorder/statement_arguments.rb#29
  def to_a; end

  # @api private
  #
  # source://scenic//lib/scenic/command_recorder/statement_arguments.rb#13
  def version; end

  # @api private
  #
  # source://scenic//lib/scenic/command_recorder/statement_arguments.rb#9
  def view; end

  private

  # @api private
  #
  # source://scenic//lib/scenic/command_recorder/statement_arguments.rb#39
  def keyword_hash(hash); end

  # @api private
  #
  # source://scenic//lib/scenic/command_recorder/statement_arguments.rb#35
  def options; end

  # @api private
  #
  # source://scenic//lib/scenic/command_recorder/statement_arguments.rb#47
  def options_for_revert; end

  # @api private
  #
  # source://scenic//lib/scenic/command_recorder/statement_arguments.rb#56
  def options_without_version; end
end

# source://scenic//lib/scenic/configuration.rb#2
class Scenic::Configuration
  # @return [Configuration] a new instance of Configuration
  #
  # source://scenic//lib/scenic/configuration.rb#9
  def initialize; end

  # The Scenic database adapter instance to use when executing SQL.
  #
  # Defaults to an instance of {Adapters::Postgres}
  #
  # @return Scenic adapter
  #
  # source://scenic//lib/scenic/configuration.rb#7
  def database; end

  # The Scenic database adapter instance to use when executing SQL.
  #
  # Defaults to an instance of {Adapters::Postgres}
  #
  # @return Scenic adapter
  #
  # source://scenic//lib/scenic/configuration.rb#7
  def database=(_arg0); end
end

# @api private
#
# source://scenic//lib/scenic/definition.rb#3
class Scenic::Definition
  # @api private
  # @return [Definition] a new instance of Definition
  #
  # source://scenic//lib/scenic/definition.rb#4
  def initialize(name, version); end

  # @api private
  #
  # source://scenic//lib/scenic/definition.rb#17
  def full_path; end

  # @api private
  #
  # source://scenic//lib/scenic/definition.rb#21
  def path; end

  # @api private
  #
  # source://scenic//lib/scenic/definition.rb#9
  def to_sql; end

  # @api private
  #
  # source://scenic//lib/scenic/definition.rb#25
  def version; end

  private

  # @api private
  #
  # source://scenic//lib/scenic/definition.rb#33
  def filename; end

  # @api private
  #
  # source://scenic//lib/scenic/definition.rb#31
  def name; end
end

# The in-memory representation of a database index.
#
# **This object is used internally by adapters and the schema dumper and is
# not intended to be used by application code. It is documented here for
# use by adapter gems.**
#
# @api extension
#
# source://scenic//lib/scenic/index.rb#9
class Scenic::Index
  # Returns a new instance of Index
  #
  # @api extension
  # @param object_name [String] The name of the object that has the index
  # @param index_name [String] The name of the index
  # @param definition [String] The SQL statements that defined the index
  # @return [Index] a new instance of Index
  #
  # source://scenic//lib/scenic/index.rb#30
  def initialize(object_name:, index_name:, definition:); end

  # The SQL statement that defines the index
  #
  # @api extension
  # @example
  #   "CREATE INDEX index_users_on_email ON users USING btree (email)"
  # @return [String]
  #
  # source://scenic//lib/scenic/index.rb#23
  def definition; end

  # The name of the index
  #
  # @api extension
  # @return [String]
  #
  # source://scenic//lib/scenic/index.rb#16
  def index_name; end

  # The name of the object that has the index
  #
  # @api extension
  # @return [String]
  #
  # source://scenic//lib/scenic/index.rb#12
  def object_name; end
end

# Automatically initializes Scenic in the context of a Rails application when
# ActiveRecord is loaded.
#
# @see Scenic.load
#
# source://scenic//lib/scenic/railtie.rb#8
class Scenic::Railtie < ::Rails::Railtie; end

# @api private
#
# source://scenic//lib/scenic/schema_dumper.rb#5
module Scenic::SchemaDumper
  # @api private
  #
  # source://scenic//lib/scenic/schema_dumper.rb#6
  def tables(stream); end

  # @api private
  #
  # source://scenic//lib/scenic/schema_dumper.rb#11
  def views(stream); end

  private

  # @api private
  #
  # source://scenic//lib/scenic/schema_dumper.rb#24
  def dumpable_views_in_database; end
end

# Methods that are made available in migrations for managing Scenic views.
#
# source://scenic//lib/scenic/statements.rb#3
module Scenic::Statements
  # Create a new database view.
  #
  # @example Create from `db/views/searches_v02.sql`
  #   create_view(:searches, version: 2)
  # @example Create from provided SQL string
  #   create_view(:active_users, sql_definition: <<-SQL)
  #   SELECT * FROM users WHERE users.active = 't'
  #   SQL
  # @param name [String, Symbol] The name of the database view.
  # @param version [Fixnum] The version number of the view, used to find the
  #   definition file in `db/views`. This defaults to `1` if not provided.
  # @param sql_definition [String] The SQL query for the view schema. An error
  #   will be raised if `sql_definition` and `version` are both set,
  #   as they are mutually exclusive.
  # @param materialized [Boolean, Hash] Set to true to create a materialized
  #   view. Set to { no_data: true } to create materialized view without
  #   loading data. Defaults to false.
  # @return The database response from executing the create statement.
  #
  # source://scenic//lib/scenic/statements.rb#25
  def create_view(name, version: T.unsafe(nil), sql_definition: T.unsafe(nil), materialized: T.unsafe(nil)); end

  # Drop a database view by name.
  #
  # @example Drop a view, rolling back to version 3 on rollback
  #   drop_view(:users_who_recently_logged_in, revert_to_version: 3)
  # @param name [String, Symbol] The name of the database view.
  # @param revert_to_version [Fixnum] Used to reverse the `drop_view` command
  #   on `rake db:rollback`. The provided version will be passed as the
  #   `version` argument to {#create_view}.
  # @param materialized [Boolean] Set to true if dropping a meterialized view.
  #   defaults to false.
  # @return The database response from executing the drop statement.
  #
  # source://scenic//lib/scenic/statements.rb#63
  def drop_view(name, revert_to_version: T.unsafe(nil), materialized: T.unsafe(nil)); end

  # Update a database view to a new version using `CREATE OR REPLACE VIEW`.
  #
  # The existing view is replaced using the supplied `version`
  # parameter.
  #
  # Does not work with materialized views due to lack of database support.
  #
  # @example
  #   replace_view :engagement_reports, version: 3, revert_to_version: 2
  # @param name [String, Symbol] The name of the database view.
  # @param version [Fixnum] The version number of the view.
  # @param revert_to_version [Fixnum] The version number to rollback to on
  #   `rake db rollback`
  # @return The database response from executing the create statement.
  #
  # source://scenic//lib/scenic/statements.rb#135
  def replace_view(name, version: T.unsafe(nil), revert_to_version: T.unsafe(nil), materialized: T.unsafe(nil)); end

  # Update a database view to a new version.
  #
  # The existing view is dropped and recreated using the supplied `version`
  # parameter.
  #
  # @example
  #   update_view :engagement_reports, version: 3, revert_to_version: 2
  # @param name [String, Symbol] The name of the database view.
  # @param version [Fixnum] The version number of the view.
  # @param sql_definition [String] The SQL query for the view schema. An error
  #   will be raised if `sql_definition` and `version` are both set,
  #   as they are mutually exclusive.
  # @param revert_to_version [Fixnum] The version number to rollback to on
  #   `rake db rollback`
  # @param materialized [Boolean, Hash] True if updating a materialized view.
  #   Set to { no_data: true } to update materialized view without loading
  #   data. Defaults to false.
  # @return The database response from executing the create statement.
  #
  # source://scenic//lib/scenic/statements.rb#91
  def update_view(name, version: T.unsafe(nil), sql_definition: T.unsafe(nil), revert_to_version: T.unsafe(nil), materialized: T.unsafe(nil)); end

  private

  # source://scenic//lib/scenic/statements.rb#151
  def definition(name, version); end

  # source://scenic//lib/scenic/statements.rb#155
  def no_data(materialized); end
end

# The name of a view or table according to rails.
#
# This removes any table name prefix or suffix that is configured via
# ActiveRecord. This allows, for example, the SchemaDumper to dump a view with
# its unaffixed name, consistent with how rails handles table dumping.
#
# source://scenic//lib/scenic/unaffixed_name.rb#7
class Scenic::UnaffixedName
  # @return [UnaffixedName] a new instance of UnaffixedName
  #
  # source://scenic//lib/scenic/unaffixed_name.rb#16
  def initialize(name, config:); end

  # source://scenic//lib/scenic/unaffixed_name.rb#21
  def call; end

  private

  # Returns the value of attribute config.
  #
  # source://scenic//lib/scenic/unaffixed_name.rb#29
  def config; end

  # Returns the value of attribute name.
  #
  # source://scenic//lib/scenic/unaffixed_name.rb#29
  def name; end

  class << self
    # Gets the unaffixed name for the provided string
    #
    # @param name [String] The (potentially) affixed view name
    # @return [String]
    #
    # source://scenic//lib/scenic/unaffixed_name.rb#12
    def for(name); end
  end
end

# source://scenic//lib/scenic/version.rb#2
Scenic::VERSION = T.let(T.unsafe(nil), String)

# The in-memory representation of a view definition.
#
# **This object is used internally by adapters and the schema dumper and is
# not intended to be used by application code. It is documented here for
# use by adapter gems.**
#
# @api extension
#
# source://scenic//lib/scenic/view.rb#9
class Scenic::View
  # Returns a new instance of View.
  #
  # @api extension
  # @param name [String] The name of the view.
  # @param definition [String] The SQL for the query that defines the view.
  # @param materialized [Boolean] `true` if the view is materialized.
  # @return [View] a new instance of View
  #
  # source://scenic//lib/scenic/view.rb#30
  def initialize(name:, definition:, materialized:); end

  # @api private
  #
  # source://scenic//lib/scenic/view.rb#37
  def ==(other); end

  # The SQL schema for the query that defines the view
  #
  # @api extension
  # @example
  #   "SELECT name, email FROM users UNION SELECT name, email FROM contacts"
  # @return [String]
  #
  # source://scenic//lib/scenic/view.rb#19
  def definition; end

  # @api extension
  #
  # source://scenic//lib/scenic/view.rb#54
  def escaped_definition; end

  # True if the view is materialized
  #
  # @api extension
  # @return [Boolean]
  #
  # source://scenic//lib/scenic/view.rb#23
  def materialized; end

  # The name of the view
  #
  # @api extension
  # @return [String]
  #
  # source://scenic//lib/scenic/view.rb#12
  def name; end

  # @api private
  #
  # source://scenic//lib/scenic/view.rb#44
  def to_schema; end
end
