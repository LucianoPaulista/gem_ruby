require_relative 'lib/gem_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "gem_ruby"
  spec.version       = GemRuby::VERSION
  spec.authors       = ["LucianoPaulista"]
  spec.email         = ["lucianodiaspaulista@gmail.com"]

  spec.summary       = "Pacote de Testes"  
  spec.homepage      = "https://github.com/LucianoPaulista/gem_ruby"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "rspec", "~> 3.2"
end
