$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "freeswitch_cli/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "freeswitch_cli"
  s.version     = FreeswitchCli::VERSION
  s.authors     = ["matteolc"]
  s.email       = ["matteo@voxbox.io"]
  s.homepage    = "https://github.com/matteolc/freeswitch_cli"
  s.summary     = "Summary of FreeswitchCli."
  s.description = "Description of FreeswitchCli."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"
  s.add_dependency 'net-ssh'
  s.add_dependency 'net-sftp'
  s.add_dependency 'net-telnet'
  
end
