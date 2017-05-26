# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hubble_observatory/version'

Gem::Specification.new do |spec|
  spec.name          = "hubble_observatory"
  spec.version       = HubbleObservatory::VERSION
  spec.authors       = ["Bruce Park"]
  spec.email         = ["bruce.park@fullscreen.net"]

  spec.summary       = %q{A client gem for the Hubble API}
  spec.description   = %q{A client gem for the Hubble API}
  spec.homepage      = "https://github.com/Fullscreen/hubble_observatory"
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.1.2'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "yard", "~> 0.9.8"
  spec.add_development_dependency "simplecov"
end
