# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'json-prettyprint/version'

Gem::Specification.new do |gem|
  gem.name          = "json-prettyprint"
  gem.version       = JSON::PrettyPrint::VERSION
  gem.authors       = ["Michal Orman"]
  gem.email         = ["michal.orman@gmail.com"]
  gem.description   = %q{Pretty print any Jsoun output with syntax highlight.}
  gem.summary       = %q{Pretty print Json output.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency  'coderay', '~> 1.0'
end
