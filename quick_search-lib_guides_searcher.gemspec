$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "quick_search/lib_guides_searcher/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "quick_search-lib_guides_searcher"
  s.version     = QuickSearch::LibGuidesSearcher::VERSION
  s.authors     = ["David P. Steelman"]
  s.email       = ["dsteelma@umd.edu"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of QuickSearch::LibGuidesSearcher."
  s.description = "TODO: Description of QuickSearch::LibGuidesSearcher."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"

  s.add_development_dependency "sqlite3"
end
