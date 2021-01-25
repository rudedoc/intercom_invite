# frozen_string_literal: true

require_relative "lib/intercom_invite"

Gem::Specification.new do |spec|
  spec.name          = "intercom_invite"
  spec.version       = IntercomInvite::VERSION
  spec.authors       = ["Mark Finlay"]
  spec.email         = ["markfinlay@Marks-iMac.local"]

  spec.summary       = "Intercom Tech Test January 2021"
  spec.homepage      = "https://github.com/rudedoc/intercom_invite"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/rudedoc/intercom_invite"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 1.7"
end
