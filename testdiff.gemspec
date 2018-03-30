require_relative 'lib/testdiff/version'

Gem::Specification.new do |spec|
  spec.name          = 'testdiff'
  spec.version       = Testdiff::VERSION
  spec.author        = 'Isaac Anthony'
  spec.email         = 'ianthony@optoro.com'
  spec.summary       = 'Ruby gem to locally test only modified files.'
  spec.description   = 'Run Rubocop and Rspec only on your modified files.'
  spec.homepage      = 'https://github.com/isaacanthony/testdiff'
  spec.license       = 'MIT'
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ['testdiff']
  spec.require_paths = ['lib']
  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rspec', '~> 3.7'
  spec.add_development_dependency 'rubocop', '~> 0.54'
end
