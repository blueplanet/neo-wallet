# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "neo/wallet/version"

Gem::Specification.new do |spec|
  spec.name          = "neo-wallet"
  spec.version       = Neo::Wallet::VERSION
  spec.authors       = ["blueplanet"]
  spec.email         = ["gyo@re-work.io"]

  spec.summary       = %q{NEO Wallet.}
  spec.description   = %q{NEO Wallet library for ruby.}
  spec.homepage      = "https://github.com/blueplanet/neo-wallet"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
