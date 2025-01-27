# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `opentelemetry-instrumentation-rake` gem.
# Please instead update this file by running `bin/tapioca gem opentelemetry-instrumentation-rake`.


# OpenTelemetry is an open source observability framework, providing a
# general-purpose API, SDK, and related tools required for the instrumentation
# of cloud-native software, frameworks, and libraries.
#
# The OpenTelemetry module provides global accessors for telemetry objects.
# See the documentation for the `opentelemetry-api` gem for details.
#
# source://opentelemetry-instrumentation-rake//lib/opentelemetry/instrumentation.rb#13
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
# source://opentelemetry-instrumentation-rake//lib/opentelemetry/instrumentation.rb#15
module OpenTelemetry::Instrumentation
  # source://opentelemetry-registry/0.3.1/lib/opentelemetry/instrumentation.rb#21
  def registry; end
end

# Contains the OpenTelemetry instrumentation for the Rake gem
#
# source://opentelemetry-instrumentation-rake//lib/opentelemetry/instrumentation/rake.rb#13
module OpenTelemetry::Instrumentation::Rake; end

# The Instrumentation class contains logic to detect and install the Rake instrumentation
#
# source://opentelemetry-instrumentation-rake//lib/opentelemetry/instrumentation/rake/instrumentation.rb#11
class OpenTelemetry::Instrumentation::Rake::Instrumentation < ::OpenTelemetry::Instrumentation::Base
  private

  # source://opentelemetry-instrumentation-rake//lib/opentelemetry/instrumentation/rake/instrumentation.rb#29
  def gem_version; end

  # source://opentelemetry-instrumentation-rake//lib/opentelemetry/instrumentation/rake/instrumentation.rb#37
  def patch_rake; end

  # source://opentelemetry-instrumentation-rake//lib/opentelemetry/instrumentation/rake/instrumentation.rb#33
  def require_dependencies; end
end

# source://opentelemetry-instrumentation-rake//lib/opentelemetry/instrumentation/rake/instrumentation.rb#12
OpenTelemetry::Instrumentation::Rake::Instrumentation::MINIMUM_VERSION = T.let(T.unsafe(nil), Gem::Version)

# source://opentelemetry-instrumentation-rake//lib/opentelemetry/instrumentation/rake/version.rb#10
OpenTelemetry::Instrumentation::Rake::VERSION = T.let(T.unsafe(nil), String)
