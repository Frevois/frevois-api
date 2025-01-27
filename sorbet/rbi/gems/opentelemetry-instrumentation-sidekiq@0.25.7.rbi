# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `opentelemetry-instrumentation-sidekiq` gem.
# Please instead update this file by running `bin/tapioca gem opentelemetry-instrumentation-sidekiq`.


# OpenTelemetry is an open source observability framework, providing a
# general-purpose API, SDK, and related tools required for the instrumentation
# of cloud-native software, frameworks, and libraries.
#
# The OpenTelemetry module provides global accessors for telemetry objects.
# See the documentation for the `opentelemetry-api` gem for details.
#
# source://opentelemetry-instrumentation-sidekiq//lib/opentelemetry/instrumentation.rb#13
module OpenTelemetry
  # source://opentelemetry-api/1.3.0/lib/opentelemetry.rb#36
  def error_handler; end

  # source://opentelemetry-api/1.3.0/lib/opentelemetry.rb#27
  def error_handler=(_arg0); end

  # source://opentelemetry-api/1.3.0/lib/opentelemetry.rb#44
  def handle_error(exception: T.unsafe(nil), message: T.unsafe(nil)); end

  # source://opentelemetry-api/1.3.0/lib/opentelemetry.rb#30
  def logger; end

  # source://opentelemetry-api/1.3.0/lib/opentelemetry.rb#27
  def logger=(_arg0); end

  # source://opentelemetry-api/1.3.0/lib/opentelemetry.rb#69
  def propagation; end

  # source://opentelemetry-api/1.3.0/lib/opentelemetry.rb#27
  def propagation=(_arg0); end

  # source://opentelemetry-api/1.3.0/lib/opentelemetry.rb#64
  def tracer_provider; end

  # source://opentelemetry-api/1.3.0/lib/opentelemetry.rb#52
  def tracer_provider=(provider); end
end

# "Instrumentation" are specified by
# https://github.com/open-telemetry/opentelemetry-specification/blob/784635d01d8690c8f5fcd1f55bdbc8a13cf2f4f2/specification/glossary.md#instrumentation-library
#
# Instrumentation should be able to handle the case when the library is not installed on a user's system.
#
# source://opentelemetry-instrumentation-sidekiq//lib/opentelemetry/instrumentation.rb#18
module OpenTelemetry::Instrumentation
  # source://opentelemetry-registry/0.3.1/lib/opentelemetry/instrumentation.rb#21
  def registry; end
end

# source://opentelemetry-instrumentation-sidekiq//lib/opentelemetry/instrumentation/sidekiq.rb#13
module OpenTelemetry::Instrumentation::Sidekiq; end

# The `OpenTelemetry::Instrumentation::Sidekiq::Instrumentation` class contains logic to detect and install the Sidekiq instrumentation
#
# Installation and configuration of this instrumentation is done within the
# {https://www.rubydoc.info/gems/opentelemetry-sdk/OpenTelemetry/SDK#configure-instance_method OpenTelemetry::SDK#configure}
# block, calling {https://www.rubydoc.info/gems/opentelemetry-sdk/OpenTelemetry%2FSDK%2FConfigurator:use use()}
# or {https://www.rubydoc.info/gems/opentelemetry-sdk/OpenTelemetry%2FSDK%2FConfigurator:use_all use_all()}.
#
# ## Configuration keys and options
#
# ### `:span_naming`
#
# Specifies how the span names are set. Can be one of:
#
# - `:queue` **(default)** - The job span name will appear as '<destination / queue name> <operation>',
#   for example `default process`.
# - `:job_class` - The job span name will appear as '<job class name> <operation>',
#   for example `SimpleJob process`.
#
# ### `:propagation_style`
#
# Specifies how the job's execution is traced and related to the trace where the job was enqueued.
#
# - `:link` **(default)** - The job will be represented by a separate trace from the span that enqueued the job.
#     - The initial span of the job trace will be associated with the span that enqueued the job, via a
#       {https://opentelemetry.io/docs/concepts/signals/traces/#span-links Span Link}.
# - `:child` - The job will be represented within the same logical trace, as a direct
#   child of the span that enqueued the job.
# - `:none` - The job will be represented by a separate trace from the span that enqueued the job.
#   There will be no explicit relationship between the job trace and the trace containing the span that
#   enqueued the job.
#
# ### `:trace_launcher_heartbeat`
#
# Allows tracing Sidekiq::Launcher#heartbeat.
#
# - `false` **(default)** - Sidekiq::Launcher#heartbeat will not be traced.
# - `true` - Sidekiq::Launcher#heartbeat will be traced.
#
# ### `:trace_poller_enqueue`
#
# Allows tracing Sidekiq::Scheduled#enqueue.
#
# - `false` **(default)** - Sidekiq::Scheduled#enqueue will not be traced.
# - `true` - Sidekiq::Scheduled#enqueue will be traced.
#
# ### `:trace_poller_wait`
#
# Allows tracing Sidekiq::Scheduled#wait.
#
# - `false` **(default)** - Sidekiq::Scheduled#wait will not be traced.
# - `true` - Sidekiq::Scheduled#wait will be traced.
#
# ### `:trace_processor_process_one`
#
# Allows tracing Sidekiq::Processor#process_one.
#
# - `false` **(default)** - Sidekiq::Processor#process_one will not be traced.
# - `true` - Sidekiq::Processor#process_one will be traced.
#
# ### `:peer_service`
#
# Sets service name of the remote service.
#
# - `nil` **(default)**
#
# @example An explicit default configuration
#   OpenTelemetry::SDK.configure do |c|
#   c.use_all({
#   'OpenTelemetry::Instrumentation::Sidekiq' => {
#   span_naming: :queue,
#   propagation_style: :link,
#   trace_launcher_heartbeat: true,
#   },
#   })
#   end
#
# source://opentelemetry-instrumentation-sidekiq//lib/opentelemetry/instrumentation/sidekiq/instrumentation.rb#85
class OpenTelemetry::Instrumentation::Sidekiq::Instrumentation < ::OpenTelemetry::Instrumentation::Base
  private

  # source://opentelemetry-instrumentation-sidekiq//lib/opentelemetry/instrumentation/sidekiq/instrumentation.rb#140
  def add_client_middleware; end

  # source://opentelemetry-instrumentation-sidekiq//lib/opentelemetry/instrumentation/sidekiq/instrumentation.rb#148
  def add_server_middleware; end

  # source://opentelemetry-instrumentation-sidekiq//lib/opentelemetry/instrumentation/sidekiq/instrumentation.rb#113
  def gem_version; end

  # source://opentelemetry-instrumentation-sidekiq//lib/opentelemetry/instrumentation/sidekiq/instrumentation.rb#126
  def patch_on_startup; end

  # source://opentelemetry-instrumentation-sidekiq//lib/opentelemetry/instrumentation/sidekiq/instrumentation.rb#117
  def require_dependencies; end
end

# source://opentelemetry-instrumentation-sidekiq//lib/opentelemetry/instrumentation/sidekiq/instrumentation.rb#86
OpenTelemetry::Instrumentation::Sidekiq::Instrumentation::MINIMUM_VERSION = T.let(T.unsafe(nil), Gem::Version)

# source://opentelemetry-instrumentation-sidekiq//lib/opentelemetry/instrumentation/sidekiq/version.rb#10
OpenTelemetry::Instrumentation::Sidekiq::VERSION = T.let(T.unsafe(nil), String)
