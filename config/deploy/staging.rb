# config/deploy/staging.rb

server "172.16.2.15", user: "taskbridgetest", roles: %w{app db web}
set :stage, :staging
set :rails_env, "staging"
set :branch, "dev"
