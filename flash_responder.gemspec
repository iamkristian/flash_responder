$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "flash_responder/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "flash_responder"
  s.version     = FlashResponder::VERSION
  s.authors     = ["Kristian Rasmussen"]
  s.email       = ["kr@iamkristian.com"]
  s.homepage    = "http://github.com/iamkristian/flash_responder"
  s.summary     = "Sets the flash"
  s.description = "Will set lash upon create, update, and destroy"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "responders", "~> 2.0"

  s.add_development_dependency "sqlite3"
end
