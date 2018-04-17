$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "cashbox/hoa/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cashbox-hoa"
  s.version     = Cashbox::Hoa::VERSION
  s.authors     = ["Maulin Pathare"]
  s.email       = ["mpathare@gmail.com"]
  s.homepage    = "https://github.com/LegalShield/cashbox-hoa"
  s.summary     = "cashbox hoa"
  s.description = "cashbox hoa"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0.rc1"

  s.add_development_dependency "rspec-rails", "~> 3.7"
end
