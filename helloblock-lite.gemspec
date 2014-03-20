# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'helloblock/version'

Gem::Specification.new do |spec|
  spec.name          = "helloblock-lite"
  spec.version       = HelloBlock::VERSION
  spec.authors       = ["Scott Li"]
  spec.email         = ["scottli0101@gmail.com"]
  spec.summary       = %q{Lightweight client}
  spec.description   = %q{Lightweight client for Helloblock API}
  spec.homepage      = "https://github.com/locksley/helloblock-lite"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"

  spec.add_dependency 'httparty', '~> 0.12.0'

  spec.required_ruby_version = '>= 2.0.0'
end
