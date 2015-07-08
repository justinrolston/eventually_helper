# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eventually_helper/version'

Gem::Specification.new do |spec|
  spec.name          = "eventually_helper"
  spec.version       = EventuallyHelper::VERSION
  spec.authors       = ["Justin Rolston"]
  spec.email         = ["justinrolston@gmail.com"]
  spec.summary       = %q{eventually_helper is a simple test helper}
  spec.description   = %q{}
  spec.homepage      = 'https://github.com/justinrolston/eventually_helper'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "coveralls"

end
