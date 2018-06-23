
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tharyel_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "tharyel_view_tool"
  spec.version       = TharyelViewTool::VERSION
  spec.authors       = ["Pedro Rocha"]
  spec.email         = ["rocha.pedro.j@gmail.com"]

  spec.summary       = %q{Several view specific methods common to applications I use.}
  spec.description   = %q{Generates HTML data for Rails Applications.}
  spec.homepage      = "https://github.com/tharyel"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
