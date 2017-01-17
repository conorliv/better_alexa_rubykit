# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'better_alexa_rubykit/version'

Gem::Specification.new do |spec|
  spec.name          = "better_alexa_rubykit"
  spec.version       = BetterAlexaRubyKit::VERSION
  spec.authors       = ["Kareem Janoudi"]
  spec.email         = ["kjanoudi@gmail.com"]
  spec.summary       = %q{Better Alexa Ruby Kit}
  spec.description   = %q{An updated version of the a ruby implementation of the Alexa Skills API}
  spec.homepage      = 'https://github.com/kjanoudi/better_alexa_rubykit'
  spec.license       = "MIT"
  spec.files         = Dir['[A-Z]*'] + Dir['lib/**/*'] + Dir['tests/**'] + Dir['bin/**']
  spec.files.reject!   { |fn| fn.include? ".gem" }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency 'bundler', '~> 1.7'
  spec.add_runtime_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.2', '>= 3.2.0'
  spec.add_development_dependency 'rspec-mocks', '~> 3.2', '>= 3.2.0'
end
