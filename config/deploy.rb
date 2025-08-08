# config/deploy.rb

# Lock Capistrano version
lock "~> 3.19.1"

# Application name
set :application, "TaskBridge"

# Git repository (use SSH if private; HTTPS if public)
set :repo_url, "https://github.com/Kanyorok/TaskBridgeApplication.git"

# Branch (you can override per environment too)
set :branch, 'dev' # override in staging.rb or production.rb if needed

# Deployment directory
set :deploy_to, "/home/deploy/#{fetch(:application)}"

# Ruby version via rbenv (optional but recommended)
set :rbenv_type, :user
set :rbenv_ruby, '3.3.5'

# Files we want symlinked into each release (for credentials and DB)
append :linked_files, "config/database.yml", "config/master.key", "config/credentials/staging.key"

# Directories that should persist between releases
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads", "storage"

# Keep the last 5 releases
set :keep_releases, 5

# Restart Passenger by touching restart.txt (works with /opt/nginx/passenger)
set :passenger_restart_with_touch, true
