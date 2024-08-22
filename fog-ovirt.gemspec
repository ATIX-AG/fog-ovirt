# coding: utf-8

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fog/ovirt/version"

Gem::Specification.new do |spec|
  spec.name          = "fog-ovirt"
  spec.version       = Fog::Ovirt::VERSION
  spec.authors       = ["Ori Rabin"]
  spec.email         = ["orabin@redhat.com"]

  spec.summary       = "Module for the 'fog' gem to support Ovirt."
  spec.description   = "This library can be used as a module for `fog`."
  spec.homepage      = "https://github.com/fog/fog-ovirt"
  spec.license       = "MIT"

  spec.files = Dir["{lib,spec}/**/*"] +
               ["LICENSE.md", "Rakefile", "README.md", "CHANGELOG.md", "CONTRIBUTORS.md"]
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 2.0.0"

  spec.add_dependency("activesupport")
  spec.add_dependency("fog-core")
  spec.add_dependency("fog-json")
  spec.add_dependency("fog-xml")
  spec.add_dependency("ovirt-engine-sdk", ">= 4.3.1")

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rubocop", "~> 1.65"
  spec.add_development_dependency "shindo"
  spec.metadata["rubygems_mfa_required"] = "true"
end
