Rails.application.routes.draw do
  mount GitHubStats::Engine => "/git_hub_stats"
end
