# frozen_string_literal: true

require_relative "lib/cincy_rbot/version"

Gem::Specification.new do |spec|
  spec.name = "cincy_rbot"
  spec.version = CincyRbot::VERSION
  spec.authors = ["Tim Mecklem"]
  spec.email = ["tim@launchscout.com"]

  spec.summary = "Basic Responder discord bot"
  spec.description = "This is a basic responder discord bot that looks for specific text in a channel's message and responds"
  spec.homepage = "https://cincyrb.com"
  spec.required_ruby_version = ">= 3.0.4"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/cincinnatirb/cincy_rbot"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
