# frozen_string_literal: true

require_relative "lib/telegram_notification/version"

Gem::Specification.new do |spec|
  spec.name          = "telegram_notification"
  spec.version       = TelegramNotification::VERSION
  spec.authors       = ["civil21"]
  spec.email         = ["diusolexander@gmail.com"]

  spec.summary       = "Simple telegram notification"
  spec.description   = "This gem will send message via telegram with ActiveJob"
  spec.homepage      = "https://github.com/Civil21/telegram_notification"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Civil21/telegram_notification"
  spec.metadata["changelog_uri"] = "https://github.com/Civil21/telegram_notification/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
