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
  s.summary     = "This gem is a wrapper around Vindicia's payment method api"
  s.description = "This gem is a wrapper around Vindicia's payment method api"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.1"
end
