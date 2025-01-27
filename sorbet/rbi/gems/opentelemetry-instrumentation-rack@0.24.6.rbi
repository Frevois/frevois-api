# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `opentelemetry-instrumentation-rack` gem.
# Please instead update this file by running `bin/tapioca gem opentelemetry-instrumentation-rack`.


# OpenTelemetry is an open source observability framework, providing a
# general-purpose API, SDK, and related tools required for the instrumentation
# of cloud-native software, frameworks, and libraries.
#
# The OpenTelemetry module provides global accessors for telemetry objects.
# See the documentation for the `opentelemetry-api` gem for details.
#
# source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation.rb#13
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

# Instrumentation should be able to handle the case when the library is not installed on a user's system.
#
# source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation.rb#15
module OpenTelemetry::Instrumentation
  # source://opentelemetry-registry/0.3.1/lib/opentelemetry/instrumentation.rb#21
  def registry; end
end

# Contains the OpenTelemetry instrumentation for the Rack gem
#
# source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation/rack.rb#13
module OpenTelemetry::Instrumentation::Rack
  extend ::OpenTelemetry::Instrumentation::Rack

  # Returns a context containing the span, derived from the optional parent
  # context, or the current context if one was not provided.
  #
  # @param context [optional Context] The context to use as the parent for
  #   the returned context
  #
  # source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation/rack.rb#33
  def context_with_span(span, parent_context: T.unsafe(nil)); end

  # Returns the current span from the current or provided context
  #
  # @param context [optional Context] The context to lookup the current
  #   {Span} from. Defaults to Context.current
  #
  # source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation/rack.rb#23
  def current_span(context = T.unsafe(nil)); end

  # Activates/deactivates the Span within the current Context, which makes the "current span"
  # available implicitly.
  #
  # On exit, the Span that was active before calling this method will be reactivated.
  #
  # @param span [Span] the span to activate
  # @yield [span, context] yields span and a context containing the span to the block.
  #
  # source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation/rack.rb#44
  def with_span(span); end
end

# source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation/rack.rb#16
OpenTelemetry::Instrumentation::Rack::CURRENT_SPAN_KEY = T.let(T.unsafe(nil), OpenTelemetry::Context::Key)

# The Instrumentation class contains logic to detect and install the Rack
# instrumentation
#
# source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation/rack/instrumentation.rb#14
class OpenTelemetry::Instrumentation::Rack::Instrumentation < ::OpenTelemetry::Instrumentation::Base
  # Temporary Helper for Sinatra and ActionPack middleware to use during installation
  #
  # @example Default usage
  #   Rack::Builder.new do
  #   use *OpenTelemetry::Instrumentation::Rack::Instrumenation.instance.middleware_args
  #   run lambda { |_arg| [200, { 'Content-Type' => 'text/plain' }, body] }
  #   end
  # @return [Array] consisting of a middleware and arguments used in rack builders
  #
  # source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation/rack/instrumentation.rb#42
  def middleware_args; end

  private

  # source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation/rack/instrumentation.rb#78
  def build_attribute_name(prefix, suffix); end

  # source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation/rack/instrumentation.rb#57
  def config_options(user_config); end

  # source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation/rack/instrumentation.rb#52
  def require_dependencies; end
end

# Provides utilities methods for creating Rack spans
#
# source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation/rack/util.rb#11
module OpenTelemetry::Instrumentation::Rack::Util; end

# QueueTime simply...
#
# source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation/rack/util/queue_time.rb#12
module OpenTelemetry::Instrumentation::Rack::Util::QueueTime
  private

  # source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation/rack/util/queue_time.rb#19
  def get_request_start(env, now = T.unsafe(nil)); end

  class << self
    # source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation/rack/util/queue_time.rb#19
    def get_request_start(env, now = T.unsafe(nil)); end
  end
end

# source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation/rack/util/queue_time.rb#15
OpenTelemetry::Instrumentation::Rack::Util::QueueTime::MINIMUM_ACCEPTABLE_TIME_VALUE = T.let(T.unsafe(nil), Integer)

# source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation/rack/util/queue_time.rb#14
OpenTelemetry::Instrumentation::Rack::Util::QueueTime::QUEUE_START = T.let(T.unsafe(nil), String)

# source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation/rack/util/queue_time.rb#13
OpenTelemetry::Instrumentation::Rack::Util::QueueTime::REQUEST_START = T.let(T.unsafe(nil), String)

# source://opentelemetry-instrumentation-rack//lib/opentelemetry/instrumentation/rack/version.rb#10
OpenTelemetry::Instrumentation::Rack::VERSION = T.let(T.unsafe(nil), String)
