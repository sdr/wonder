# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wonder/version'

Gem::Specification.new do |spec|
  spec.name          = "wonder"
  spec.version       = Wonder::VERSION
  spec.authors       = ["sdr"]
  spec.email         = ["sdr@263.net"]
  spec.summary       = %q{add encryp and uncryp function to String and add format function to Integer and Float.}
  spec.description   = %q{String.to_encryp String.to_uncryp Integer.commas Float.commas}
  spec.homepage      = "http://www.iwuye.net"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
