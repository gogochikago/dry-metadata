# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dry/metadata/version'

Gem::Specification.new do |spec|
  spec.name          = 'dry-metadata'
  spec.version       = Dry::Metadata::VERSION
  spec.authors       = ['russell edens']
  spec.email         = ['russell@voomify.com']

  spec.summary       = 'Metadata for dry-validations and dry-structs'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/voomify/dry-metadata'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'dry-validation', '~> 0.11.0'
  spec.add_runtime_dependency 'dry-struct', '>= 0.1.1'
  spec.add_runtime_dependency 'dry-types', '~> 0.12.0'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
