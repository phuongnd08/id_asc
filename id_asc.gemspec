
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "id_asc/version"

Gem::Specification.new do |spec|
  spec.name          = "id_asc"
  spec.version       = IdAsc::VERSION
  spec.authors       = ["Phuong Nguyen"]
  spec.email         = ["phuongnd08@gmail.com"]

  spec.summary       = %q{Add id_asc scope to ActiveRecord}
  spec.description   = %q{Add id_asc scope to ActiveRecord}
  spec.homepage      = "https://github.com/phuongnd08/id_asc"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
