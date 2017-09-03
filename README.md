# GitHubStats
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'git_hub_stats'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install git_hub_stats
```

## Usage

The below `fetch_and_save!` methods:

- Hit [GitHub's REST API v3](https://developer.github.com/v3/)
- Get all of your:
  - merged pull requests, associated commits and associated GitHub users
  - closed issues and associated GitHub users
  - across all of your repositories
- Convert GitHub's data into a common, calculable, reusable format
- Save the formatted data to a new `GitHubStatistic` table
- Save the associated GitHub users to a new `GitHubUser` table

```ruby
GitHubStats::PullRequets.new.fetch_and_save!
GitHubStats::Issues.new.fetch_and_save!
```

GitHubStats creates a combination of queries and methods that aggregate and calculate customer facing statistics, namely:

```ruby
GitHubStats::Presenter.new(options).totals
GitHubStats::Presenter.new(options).totals_by_repository
GitHubStats::Presenter.new(options).totals_for_user
GitHubStats::Presenter.new(options).totals_for_user_in_repository
GitHubStats::Presenter.new(options).averages
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
