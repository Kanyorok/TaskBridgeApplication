server "172.16.2.15", user: "deploy", roles: %w[app db web]

set :rails_env, "production"
set :branch, "dev"   # or keep "dev" if that’s really your prod branch

# If you want a separate folder just for prod, uncomment:
# set :deploy_to, "/home/deploy/#{fetch(:application)}"

# Link the production key (env-specific)
append :linked_files, "config/credentials/production.key"
