# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'soccerama/version'

Gem::Specification.new do |spec|
  spec.name          = "soccerama"
  spec.version       = Soccerama::VERSION
  spec.authors       = ["Artur Borisovich"]
  spec.email         = ["thesunwave@gmail.com"]

  spec.summary       = %q{Ruby wrapper for soccerama.pro API}
  spec.homepage      = "https://github.com/thesunwave/soccerama-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", "~> 0.13.7"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
