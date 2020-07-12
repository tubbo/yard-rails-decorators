require_relative 'lib/yard/rails/decorators/version'

Gem::Specification.new do |spec|
  spec.name          = "yard-rails-decorators"
  spec.version       = Yard::Rails::Decorators::VERSION
  spec.authors       = ["Tom Scott"]
  spec.email         = ["tscott@workarea.com"]

  spec.summary       = 'A plugin for YARD to include Rails::Decorators in your documentation'
  spec.description   = "#{spec.summary}. Applies changes from your decorators to the original code and includes both in your documentation, as if you wrote the object yourself."
  spec.homepage      = 'https://workarea.com'
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = 'https://github.com/workarea-commerce/yard-rails-decorators'
  spec.metadata["changelog_uri"] = 'https://github.com/workarea-commerce/yard-rails-decorators/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "yard", "~> 0"
end
