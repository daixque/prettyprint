# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prettyprint/version'

Gem::Specification.new do |spec|
  spec.name          = "prettyprint"
  spec.version       = PrettyPrint::VERSION
  spec.authors       = ["daixque"]
  spec.email         = ["daixque@gmail.com"]
  spec.description   = %q{cli tool for pretty printing}
  spec.summary       = %q{cli tool for pretty printing}
  spec.homepage      = "https://github.com/daixque"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.executables   = ["prettyprint"]

  spec.add_dependency "thor"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
