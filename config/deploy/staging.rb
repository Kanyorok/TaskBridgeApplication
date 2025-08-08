server "172.16.2.15", user: "deploy", roles: %w[app db web]

set :rails_env, "staging"
set :branch, "dev"

# If you want a separate folder for staging, do this:
# set :deploy_to, "/home/deploy/#{fetch(:application)}-staging"

# Link the staging key (env-specific)
append :linked_files, "config/credentials/staging.key"
