# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `after_commit_everywhere` gem.
# Please instead update this file by running `bin/tapioca gem after_commit_everywhere`.


# Module allowing to use ActiveRecord transactional callbacks outside of
# ActiveRecord models, literally everywhere in your application.
#
# Include it to your classes (e.g. your base service object class or whatever)
#
# source://after_commit_everywhere//lib/after_commit_everywhere/version.rb#3
module AfterCommitEverywhere
  # source://after_commit_everywhere//lib/after_commit_everywhere.rb#16
  def after_commit(*_arg0, **_arg1, &_arg2); end

  # source://after_commit_everywhere//lib/after_commit_everywhere.rb#16
  def after_rollback(*_arg0, **_arg1, &_arg2); end

  # source://after_commit_everywhere//lib/after_commit_everywhere.rb#16
  def before_commit(*_arg0, **_arg1, &_arg2); end

  # source://after_commit_everywhere//lib/after_commit_everywhere.rb#17
  def in_transaction(*_arg0, **_arg1, &_arg2); end

  # source://after_commit_everywhere//lib/after_commit_everywhere.rb#17
  def in_transaction?(*_arg0, **_arg1, &_arg2); end

  class << self
    # Runs +callback+ after successful commit of outermost transaction for
    # database +connection+.
    #
    # @param connection [ActiveRecord::ConnectionAdapters::AbstractAdapter] Database connection to operate in. Defaults to +ActiveRecord::Base.connection+
    # @param without_tx [Symbol] Determines the behavior of this function when
    #   called without an open transaction.
    #
    #   Must be one of: {RAISE}, {EXECUTE}, or {WARN_AND_EXECUTE}.
    # @param callback [#call] Callback to be executed
    # @return void
    #
    # source://after_commit_everywhere//lib/after_commit_everywhere.rb#41
    def after_commit(prepend: T.unsafe(nil), connection: T.unsafe(nil), without_tx: T.unsafe(nil), &callback); end

    # Runs +callback+ after rolling back of transaction or savepoint (if declared
    # in nested transaction) for database +connection+.
    #
    # Caveat: do not raise +ActivRecord::Rollback+ in nested transaction block!
    # See http://api.rubyonrails.org/classes/ActiveRecord/Transactions/ClassMethods.html#module-ActiveRecord::Transactions::ClassMethods-label-Nested+transactions
    #
    # @param connection [ActiveRecord::ConnectionAdapters::AbstractAdapter] Database connection to operate in. Defaults to +ActiveRecord::Base.connection+
    # @param callback [#call] Callback to be executed
    # @raise [NotInTransaction] if called outside transaction.
    # @return void
    #
    # source://after_commit_everywhere//lib/after_commit_everywhere.rb#97
    def after_rollback(prepend: T.unsafe(nil), connection: T.unsafe(nil), &callback); end

    # Runs +callback+ before committing of outermost transaction for +connection+.
    #
    # Available only since Ruby on Rails 5.0. See https://github.com/rails/rails/pull/18936
    #
    # @param connection [ActiveRecord::ConnectionAdapters::AbstractAdapter] Database connection to operate in. Defaults to +ActiveRecord::Base.connection+
    # @param without_tx [Symbol] Determines the behavior of this function when
    #   called without an open transaction.
    #
    #   Must be one of: {RAISE}, {EXECUTE}, or {WARN_AND_EXECUTE}.
    # @param callback [#call] Callback to be executed
    # @return void
    #
    # source://after_commit_everywhere//lib/after_commit_everywhere.rb#68
    def before_commit(prepend: T.unsafe(nil), connection: T.unsafe(nil), without_tx: T.unsafe(nil), &callback); end

    # Makes sure the provided block runs in a transaction. If we are not currently in a transaction, a new transaction is started.
    #
    # It mimics the ActiveRecord's +transaction+ method's API and actually uses it under the hood.
    #
    # However, the main difference is that it doesn't swallow +ActiveRecord::Rollback+ exception in case when there is no transaction open.
    #
    # @param connection [ActiveRecord::ConnectionAdapters::AbstractAdapter] Database connection to operate in. Defaults to +ActiveRecord::Base.connection+
    # @param requires_new [Boolean] Forces creation of new subtransaction (savepoint) even if transaction is already opened.
    # @param new_tx_options [Hash<Symbol, void>] Options to be passed to +connection.transaction+ on new transaction creation
    # @return void
    # @see https://api.rubyonrails.org/classes/ActiveRecord/ConnectionAdapters/DatabaseStatements.html#method-i-transaction
    #
    # source://after_commit_everywhere//lib/after_commit_everywhere.rb#161
    def in_transaction(connection = T.unsafe(nil), requires_new: T.unsafe(nil), **new_tx_options); end

    # Helper method to determine whether we're currently in transaction or not
    #
    # @return [Boolean]
    #
    # source://after_commit_everywhere//lib/after_commit_everywhere.rb#140
    def in_transaction?(connection = T.unsafe(nil)); end

    # @api private
    # @raise [ArgumentError]
    #
    # source://after_commit_everywhere//lib/after_commit_everywhere.rb#108
    def register_callback(prepend:, name:, without_tx:, callback:, connection: T.unsafe(nil)); end

    private

    # source://after_commit_everywhere//lib/after_commit_everywhere.rb#171
    def default_connection; end
  end
end

# Causes {before_commit} and {after_commit} to execute the given callback
# immediately when called outside a transaction.
#
# source://after_commit_everywhere//lib/after_commit_everywhere.rb#24
AfterCommitEverywhere::EXECUTE = T.let(T.unsafe(nil), Symbol)

# source://after_commit_everywhere//lib/after_commit_everywhere.rb#14
class AfterCommitEverywhere::NotInTransaction < ::RuntimeError; end

# Causes {before_commit} and {after_commit} to raise an exception when
# called outside a transaction.
#
# source://after_commit_everywhere//lib/after_commit_everywhere.rb#21
AfterCommitEverywhere::RAISE = T.let(T.unsafe(nil), Symbol)

# source://after_commit_everywhere//lib/after_commit_everywhere/version.rb#4
AfterCommitEverywhere::VERSION = T.let(T.unsafe(nil), String)

# Causes {before_commit} and {after_commit} to log a warning before calling
# the given callback immediately when called outside a transaction.
#
# source://after_commit_everywhere//lib/after_commit_everywhere.rb#27
AfterCommitEverywhere::WARN_AND_EXECUTE = T.let(T.unsafe(nil), Symbol)

# ActiveRecord model-like class to fake ActiveRecord to make it believe
# that it calls transactional callbacks on real model objects.
#
# source://after_commit_everywhere//lib/after_commit_everywhere/wrap.rb#6
class AfterCommitEverywhere::Wrap
  # @return [Wrap] a new instance of Wrap
  #
  # source://after_commit_everywhere//lib/after_commit_everywhere/wrap.rb#7
  def initialize(connection: T.unsafe(nil), **handlers); end

  # Required for +transaction(requires_new: true)+
  #
  # source://after_commit_everywhere//lib/after_commit_everywhere/wrap.rb#37
  def add_to_transaction(*_arg0); end

  # source://after_commit_everywhere//lib/after_commit_everywhere/wrap.rb#18
  def before_committed!(*_arg0); end

  # source://after_commit_everywhere//lib/after_commit_everywhere/wrap.rb#26
  def committed!(should_run_callbacks: T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://after_commit_everywhere//lib/after_commit_everywhere/wrap.rb#13
  def has_transactional_callbacks?; end

  # source://after_commit_everywhere//lib/after_commit_everywhere/wrap.rb#32
  def rolledback!(*_arg0); end

  # @return [Boolean]
  #
  # source://after_commit_everywhere//lib/after_commit_everywhere/wrap.rb#22
  def trigger_transactional_callbacks?; end
end
