# config/deploy.rb
lock "~> 3.19.1"

set :application, "TaskBridge"
set :repo_url, "https://github.com/Kanyorok/TaskBridgeApplication.git"
set :branch, "dev" # default; can be overridden per stage

# Default deploy_to (prod can override if you want)
set :deploy_to, "/home/deploy/#{fetch(:application)}"

set :rbenv_type, :user
set :rbenv_ruby, "3.3.5"

# Do NOT link keys globally when using env-specific credentials
# append :linked_files, "config/database.yml", "config/master.key", "config/credentials/staging.key"
append :linked_files, "config/database.yml"

append :linked_dirs,
  "log", "tmp/pids", "tmp/cache", "tmp/sockets",
  "vendor/bundle", "public/system", "public/uploads", "storage"

set :keep_releases, 5
set :passenger_restart_with_touch, true
