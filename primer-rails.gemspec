# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'primer/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "primer-rails"
  spec.version       = Primer::Rails::VERSION
  spec.authors       = ["Piotr Jaworski"]
  spec.email         = ["piotr.jaworski@live.com"]

  spec.summary       = %q{Github's css framework implementation in Rails.}
  spec.description   = %q{Github's css framework implementation in Rails.}
  spec.homepage      = "http://pjaworski.pl"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "vendor"]

  spec.add_dependency "bundler", "~> 1.10"
  spec.add_dependency "rake", "~> 10.0"
end
