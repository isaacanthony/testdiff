# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'testdiff/version'

Gem::Specification.new do |spec|
  spec.name          = 'testdiff'
  spec.version       = Testdiff::VERSION
  spec.authors       = ['Isaac Anthony']
  spec.summary       = 'Ruby gem to locally test only modified files.'
  spec.description   = 'Ruby gem to locally test only modified files.'
  spec.homepage      = 'https://github.com/isaacanthony/testdiff'
  spec.license       = 'MIT'
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ['testdiff']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.40'
end
