c = { url: ENV["JOB_WORKER_URL"] }

Sidekiq.configure_server do |config|
  config.redis = c
end

Sidekiq.configure_client do |config|
  config.redis = c
end
