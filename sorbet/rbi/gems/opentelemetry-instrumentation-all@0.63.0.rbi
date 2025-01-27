# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `opentelemetry-instrumentation-all` gem.
# Please instead update this file by running `bin/tapioca gem opentelemetry-instrumentation-all`.


# OpenTelemetry is an open source observability framework, providing a
# general-purpose API, SDK, and related tools required for the instrumentation
# of cloud-native software, frameworks, and libraries.
#
# The OpenTelemetry module provides global accessors for telemetry objects.
# See the documentation for the `opentelemetry-api` gem for details.
#
# source://opentelemetry-instrumentation-all//lib/opentelemetry/instrumentation/all.rb#54
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

# source://opentelemetry-instrumentation-all//lib/opentelemetry/instrumentation/all.rb#55
module OpenTelemetry::Instrumentation
  # source://opentelemetry-registry/0.3.1/lib/opentelemetry/instrumentation.rb#21
  def registry; end
end

# Namespace for the Opentelemetry all-in-one gem
#
# source://opentelemetry-instrumentation-all//lib/opentelemetry/instrumentation/all.rb#57
module OpenTelemetry::Instrumentation::All; end

# source://opentelemetry-instrumentation-all//lib/opentelemetry/instrumentation/all/version.rb#10
OpenTelemetry::Instrumentation::All::VERSION = T.let(T.unsafe(nil), String)
