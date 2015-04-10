# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minitest/expect_hashkeys/version'

Gem::Specification.new do |spec|
  spec.name          = "minitest-expect_hashkeys"
  spec.version       = Minitest::ExpectHashkeys::VERSION
  spec.authors       = ["John Stewart"]
  spec.email         = ["johns@wellmatchhealth.com"]
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "minitest", "~> 5.5"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
