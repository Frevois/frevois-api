# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `clockwork-test` gem.
# Please instead update this file by running `bin/tapioca gem clockwork-test`.


# source://clockwork-test//lib/clockwork/test/event.rb#1
module Clockwork
  include ::Clockwork::Methods

  mixes_in_class_methods ::Clockwork::Methods

  class << self
    # source://clockwork/3.0.2/lib/clockwork.rb#11
    def included(klass); end

    # source://clockwork/3.0.2/lib/clockwork.rb#16
    def manager; end

    # source://clockwork/3.0.2/lib/clockwork.rb#20
    def manager=(manager); end
  end
end

# source://clockwork-test//lib/clockwork/test.rb#11
module Clockwork::Methods
  # source://clockwork/3.0.2/lib/clockwork.rb#50
  def clear!; end

  # source://clockwork-test//lib/clockwork/test.rb#17
  def configure(&block); end

  # source://clockwork/3.0.2/lib/clockwork.rb#34
  def error_handler(&block); end

  # source://clockwork-test//lib/clockwork/test.rb#12
  def every(period, job, options = T.unsafe(nil), &block); end

  # source://clockwork-test//lib/clockwork/test.rb#22
  def handler(&block); end

  # source://clockwork-test//lib/clockwork/test.rb#27
  def on(event, options = T.unsafe(nil), &block); end

  # source://clockwork/3.0.2/lib/clockwork.rb#46
  def run; end
end

# source://clockwork-test//lib/clockwork/test/event.rb#2
module Clockwork::Test
  extend ::Clockwork::Methods
  extend ::Clockwork::Test::Methods
  include ::Clockwork::Test::Methods
  include ::Clockwork::Methods

  mixes_in_class_methods ::Clockwork::Test::Methods
  mixes_in_class_methods ::Clockwork::Methods

  class << self
    # @private
    #
    # source://clockwork-test//lib/clockwork/test.rb#35
    def included(klass); end

    # source://clockwork-test//lib/clockwork/test.rb#43
    def manager; end

    # source://clockwork-test//lib/clockwork/test.rb#47
    def manager=(manager); end
  end
end

# source://clockwork-test//lib/clockwork/test/event.rb#3
class Clockwork::Test::Event < ::Clockwork::Event
  # Returns the value of attribute block.
  #
  # source://clockwork-test//lib/clockwork/test/event.rb#4
  def block; end

  private

  # source://clockwork-test//lib/clockwork/test/event.rb#8
  def execute; end
end

# source://clockwork-test//lib/clockwork/test/job_history.rb#3
class Clockwork::Test::JobHistory
  # @return [JobHistory] a new instance of JobHistory
  #
  # source://clockwork-test//lib/clockwork/test/job_history.rb#4
  def initialize(prior_history = T.unsafe(nil), prior_work = T.unsafe(nil)); end

  # source://clockwork-test//lib/clockwork/test/job_history.rb#21
  def block_for(job); end

  # source://clockwork-test//lib/clockwork/test/job_history.rb#9
  def jobs; end

  # @return [Boolean]
  #
  # source://clockwork-test//lib/clockwork/test/job_history.rb#13
  def ran_job?(job); end

  # source://clockwork-test//lib/clockwork/test/job_history.rb#25
  def record(new_events); end

  # source://clockwork-test//lib/clockwork/test/job_history.rb#17
  def times_run(job); end

  private

  # Returns the value of attribute history.
  #
  # source://clockwork-test//lib/clockwork/test/job_history.rb#37
  def history; end

  # Returns the value of attribute work_done.
  #
  # source://clockwork-test//lib/clockwork/test/job_history.rb#37
  def work_done; end
end

# source://clockwork-test//lib/clockwork/test/manager.rb#3
class Clockwork::Test::Manager < ::Clockwork::Manager
  # @return [Manager] a new instance of Manager
  #
  # source://clockwork-test//lib/clockwork/test/manager.rb#6
  def initialize(opts = T.unsafe(nil)); end

  # source://clockwork-test//lib/clockwork/test/manager.rb#38
  def block_for(job); end

  # Returns the value of attribute end_time.
  #
  # source://clockwork-test//lib/clockwork/test/manager.rb#4
  def end_time; end

  # Returns the value of attribute max_ticks.
  #
  # source://clockwork-test//lib/clockwork/test/manager.rb#4
  def max_ticks; end

  # @return [Boolean]
  #
  # source://clockwork-test//lib/clockwork/test/manager.rb#30
  def ran_job?(job); end

  # source://clockwork-test//lib/clockwork/test/manager.rb#15
  def run(opts = T.unsafe(nil)); end

  # Returns the value of attribute start_time.
  #
  # source://clockwork-test//lib/clockwork/test/manager.rb#4
  def start_time; end

  # source://clockwork-test//lib/clockwork/test/manager.rb#34
  def times_run(job); end

  # Returns the value of attribute total_ticks.
  #
  # source://clockwork-test//lib/clockwork/test/manager.rb#4
  def total_ticks; end

  private

  # source://clockwork-test//lib/clockwork/test/manager.rb#81
  def events_run_now; end

  # Returns the value of attribute history.
  #
  # source://clockwork-test//lib/clockwork/test/manager.rb#57
  def history; end

  # source://clockwork-test//lib/clockwork/test/manager.rb#71
  def register(period, job, block, options); end

  # source://clockwork-test//lib/clockwork/test/manager.rb#44
  def set_opts(opts); end

  # source://clockwork-test//lib/clockwork/test/manager.rb#59
  def tick_loop; end

  # @return [Boolean]
  #
  # source://clockwork-test//lib/clockwork/test/manager.rb#85
  def ticks_exceeded?; end

  # @return [Boolean]
  #
  # source://clockwork-test//lib/clockwork/test/manager.rb#89
  def time_exceeded?; end

  # source://clockwork-test//lib/clockwork/test/manager.rb#77
  def update_job_history; end
end

# source://clockwork-test//lib/clockwork/test.rb#52
module Clockwork::Test::Methods
  # source://clockwork-test//lib/clockwork/test.rb#83
  def block_for(job); end

  # source://clockwork-test//lib/clockwork/test.rb#71
  def clear!; end

  # @return [Boolean]
  #
  # source://clockwork-test//lib/clockwork/test.rb#75
  def ran_job?(job); end

  # source://clockwork-test//lib/clockwork/test.rb#53
  def run(opts = T.unsafe(nil)); end

  # source://clockwork-test//lib/clockwork/test.rb#79
  def times_run(job); end
end

# source://clockwork-test//lib/clockwork/test/rspec/matchers/have_run.rb#3
module Clockwork::Test::RSpec; end

# source://clockwork-test//lib/clockwork/test/rspec/matchers/have_run.rb#4
module Clockwork::Test::RSpec::Matchers
  # source://clockwork-test//lib/clockwork/test/rspec/matchers.rb#7
  def have_run(job, opts = T.unsafe(nil)); end
end

# source://clockwork-test//lib/clockwork/test/rspec/matchers/have_run.rb#5
class Clockwork::Test::RSpec::Matchers::HaveRun
  # @return [HaveRun] a new instance of HaveRun
  #
  # source://clockwork-test//lib/clockwork/test/rspec/matchers/have_run.rb#6
  def initialize(job_name = T.unsafe(nil), opts = T.unsafe(nil)); end

  # source://clockwork-test//lib/clockwork/test/rspec/matchers/have_run.rb#41
  def description; end

  # source://clockwork-test//lib/clockwork/test/rspec/matchers/have_run.rb#24
  def exactly(times); end

  # source://clockwork-test//lib/clockwork/test/rspec/matchers/have_run.rb#45
  def failure_message; end

  # source://clockwork-test//lib/clockwork/test/rspec/matchers/have_run.rb#49
  def failure_message_when_negated; end

  # @return [Boolean]
  #
  # source://clockwork-test//lib/clockwork/test/rspec/matchers/have_run.rb#12
  def matches?(clock_test); end

  # source://clockwork-test//lib/clockwork/test/rspec/matchers/have_run.rb#20
  def once; end

  # source://clockwork-test//lib/clockwork/test/rspec/matchers/have_run.rb#32
  def time(times = T.unsafe(nil)); end

  # source://clockwork-test//lib/clockwork/test/rspec/matchers/have_run.rb#28
  def times(times = T.unsafe(nil)); end
end

# source://clockwork-test//lib/clockwork/test/version.rb#3
Clockwork::Test::VERSION = T.let(T.unsafe(nil), String)
