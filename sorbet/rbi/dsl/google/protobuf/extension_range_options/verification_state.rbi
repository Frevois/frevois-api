# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Protobuf::ExtensionRangeOptions::VerificationState`.
# Please instead update this file by running `bin/tapioca dsl Google::Protobuf::ExtensionRangeOptions::VerificationState`.


module Google::Protobuf::ExtensionRangeOptions::VerificationState
  class << self
    sig { returns(Google::Protobuf::EnumDescriptor) }
    def descriptor; end

    sig { params(number: Integer).returns(T.nilable(Symbol)) }
    def lookup(number); end

    sig { params(symbol: Symbol).returns(T.nilable(Integer)) }
    def resolve(symbol); end
  end
end

Google::Protobuf::ExtensionRangeOptions::VerificationState::DECLARATION = 0
Google::Protobuf::ExtensionRangeOptions::VerificationState::UNVERIFIED = 1
