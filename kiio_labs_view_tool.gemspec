# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "kiio_labs_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "kiio_labs_view_tool"
  spec.version       = KiioLabsViewTool::VERSION
  spec.authors       = ["paul"]
  spec.email         = ["paul@wow.com"]

  spec.summary       = %q{Various view specific methods for application I use.}
  spec.description   = %q{Provides general html data for Rails applications.}
  spec.homepage      = "kiiolabs.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
