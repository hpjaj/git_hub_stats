$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "git_hub_stats/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "git_hub_stats"
  s.version     = GitHubStats::VERSION
  s.authors     = ["Harry Levine"]
  s.email       = ["hmlevine@gmail.com"]
  s.homepage    = "https://github.com/hpjaj/git_hub_stats"
  s.summary     = "Fetches your GitHub repositories' data and returns stats on them."
  s.description = "Uses Github's REST API v3 to (1) get all of our merged pull requests, associated commits and associated GitHub users, and (2) closed issues and associated GitHub users, across all of our repositories.  It then (3) converts GitHub's disparate data into a common, calculable, reusable format. It then (4) creates a combination of queries and methods that aggregate and calculate customer facing statistics, namely: totals across all your repos, totals by repository, totals for a given GitHub user, averages across all repos, totals for a given user, in a given repository."
  s.license     = "MIT"

  s.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 5.1.2"

  s.add_development_dependency 'database_cleaner', '~> 1.6', '>= 1.6.1'
  s.add_development_dependency 'factory_girl_rails', '~> 4.8'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency 'rspec-rails', '~> 3.6', '>= 3.6.1'
end
