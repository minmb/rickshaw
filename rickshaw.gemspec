# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rickshaw/version'

Gem::Specification.new do |spec|
  spec.name          = "rickshaw"
  spec.version       = Rickshaw::VERSION
  spec.authors       = ["protomouse"]
  spec.email         = ["root@protomou.se"]
  spec.summary       = %q{DSL for building Rickshaw graphs}
  spec.description   = %q{DSL for building Rickshaw graphs}
  spec.homepage      = "https://github.com/minmb/rickshaw"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
