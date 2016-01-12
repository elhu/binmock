# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'binmock/version'

Gem::Specification.new do |spec|
  spec.name          = "binmock"
  spec.version       = Binmock::VERSION
  spec.authors       = ["Vincent Boisard", "Adrien Jarthon"]
  spec.email         = ["boisard.v@gmail.com"]

  spec.summary       = %q{Mock command-line invocations in ruby specs.}
  spec.description   = %q{Mock command-line invocations in ruby specs.}
  spec.homepage      = "https://github.com/elhu/binmock"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
