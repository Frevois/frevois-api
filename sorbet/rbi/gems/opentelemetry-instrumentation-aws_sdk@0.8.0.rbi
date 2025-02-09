# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `opentelemetry-instrumentation-aws_sdk` gem.
# Please instead update this file by running `bin/tapioca gem opentelemetry-instrumentation-aws_sdk`.


# OpenTelemetry is an open source observability framework, providing a
# general-purpose API, SDK, and related tools required for the instrumentation
# of cloud-native software, frameworks, and libraries.
#
# The OpenTelemetry module provides global accessors for telemetry objects.
# See the documentation for the `opentelemetry-api` gem for details.
#
# source://opentelemetry-instrumentation-aws_sdk//lib/opentelemetry/instrumentation.rb#13
module OpenTelemetry
  # source://opentelemetry-api/1.4.0/lib/opentelemetry.rb#36
  def error_handler; end

  # source://opentelemetry-api/1.4.0/lib/opentelemetry.rb#27
  def error_handler=(_arg0); end

  # source://opentelemetry-api/1.4.0/lib/opentelemetry.rb#44
  def handle_error(exception: T.unsafe(nil), message: T.unsafe(nil)); end

  # source://opentelemetry-api/1.4.0/lib/opentelemetry.rb#30
  def logger; end

  # source://opentelemetry-api/1.4.0/lib/opentelemetry.rb#27
  def logger=(_arg0); end

  # source://opentelemetry-api/1.4.0/lib/opentelemetry.rb#69
  def propagation; end

  # source://opentelemetry-api/1.4.0/lib/opentelemetry.rb#27
  def propagation=(_arg0); end

  # source://opentelemetry-api/1.4.0/lib/opentelemetry.rb#64
  def tracer_provider; end

  # source://opentelemetry-api/1.4.0/lib/opentelemetry.rb#52
  def tracer_provider=(provider); end
end

# "Instrumentation" are specified by
# https://github.com/open-telemetry/opentelemetry-specification/blob/784635d01d8690c8f5fcd1f55bdbc8a13cf2f4f2/specification/glossary.md#instrumentation-library
#
# Instrumentation should be able to handle the case when the library is not installed on a user's system.
#
# source://opentelemetry-instrumentation-aws_sdk//lib/opentelemetry/instrumentation.rb#18
module OpenTelemetry::Instrumentation
  # source://opentelemetry-registry/0.3.1/lib/opentelemetry/instrumentation.rb#21
  def registry; end
end

# Contains the OpenTelemetry instrumentation for the Aws gem
#
# source://opentelemetry-instrumentation-aws_sdk//lib/opentelemetry/instrumentation/aws_sdk.rb#13
module OpenTelemetry::Instrumentation::AwsSdk; end

# The `OpenTelemetry::Instrumentation::AwsSdk::Instrumentation` class contains
# logic to detect and install the AwsSdk instrumentation.
#
# ## Configuration keys and options
#
# ### `:inject_messaging_context`
#
# Allows adding of context key/value to Message Attributes for SQS/SNS messages.
#
# - `false` **(default)** - Context key/value will not be added.
# - `true` - Context key/value will be added.
#
# ### `:suppress_internal_instrumentation`
#
# Disables tracing of spans of `internal` span kind.
#
# - `false` **(default)** - Internal spans are traced.
# - `true` - Internal spans are not traced.
#
# @example An explicit default configuration
#   OpenTelemetry::SDK.configure do |c|
#   c.use 'OpenTelemetry::Instrumentation::AwsSdk', {
#   inject_messaging_context: false,
#   suppress_internal_instrumentation: false
#   }
#   end
#
# source://opentelemetry-instrumentation-aws_sdk//lib/opentelemetry/instrumentation/aws_sdk/instrumentation.rb#36
class OpenTelemetry::Instrumentation::AwsSdk::Instrumentation < ::OpenTelemetry::Instrumentation::Base
  # source://opentelemetry-instrumentation-aws_sdk//lib/opentelemetry/instrumentation/aws_sdk/instrumentation.rb#56
  def gem_version; end

  private

  # source://opentelemetry-instrumentation-aws_sdk//lib/opentelemetry/instrumentation/aws_sdk/instrumentation.rb#76
  def add_plugins(*targets); end

  # This check does the following:
  # 1 - Checks if the service client is autoload or not
  # 2 - Validates whether if is a service client
  # note that Seahorse::Client::Base is a superclass for V3 clients
  # but for V2, it is Aws::Client
  #
  # @return [Boolean]
  #
  # source://opentelemetry-instrumentation-aws_sdk//lib/opentelemetry/instrumentation/aws_sdk/instrumentation.rb#118
  def loaded_service?(constant, service_module); end

  # source://opentelemetry-instrumentation-aws_sdk//lib/opentelemetry/instrumentation/aws_sdk/instrumentation.rb#100
  def loaded_service_clients; end

  # Patches AWS SDK V3's telemetry plugin for integration
  # This patch supports configuration set by this gem and
  # additional span attributes that was not provided by the plugin
  #
  # source://opentelemetry-instrumentation-aws_sdk//lib/opentelemetry/instrumentation/aws_sdk/instrumentation.rb#96
  def patch_telemetry_plugin; end

  # source://opentelemetry-instrumentation-aws_sdk//lib/opentelemetry/instrumentation/aws_sdk/instrumentation.rb#68
  def require_dependencies; end

  # @return [Boolean]
  #
  # source://opentelemetry-instrumentation-aws_sdk//lib/opentelemetry/instrumentation/aws_sdk/instrumentation.rb#84
  def supports_telemetry_plugin?(klass); end

  # @return [Boolean]
  #
  # source://opentelemetry-instrumentation-aws_sdk//lib/opentelemetry/instrumentation/aws_sdk/instrumentation.rb#89
  def telemetry_plugin?; end
end

# source://opentelemetry-instrumentation-aws_sdk//lib/opentelemetry/instrumentation/aws_sdk/instrumentation.rb#37
OpenTelemetry::Instrumentation::AwsSdk::Instrumentation::MINIMUM_VERSION = T.let(T.unsafe(nil), Gem::Version)

# source://opentelemetry-instrumentation-aws_sdk//lib/opentelemetry/instrumentation/aws_sdk/version.rb#10
OpenTelemetry::Instrumentation::AwsSdk::VERSION = T.let(T.unsafe(nil), String)
