# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap/table/rails/version'

Gem::Specification.new do |spec|

  spec.name = "bootstrap-table-rails"
  spec.version = Bootstrap::Table::Rails::VERSION
  spec.authors = ["Frank Walentowski"]
  spec.email = ["frank.walentowski@inchron.de"]

  spec.summary = "an asset gemification of bootstrap-table"
  spec.description = "Bootstrap-Table, integrated in Rails assets pipeline."
  spec.homepage = "https://github.com/inchron/bootstrap-table-rails"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
