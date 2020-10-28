# frozen_string_literal: true

server '188.190.161.38:22115', user: 'deployer', roles: %w[web app db]
set :rails_env, :production
set :stage, :production
set :sidekiq_env, :production
set :deploy_to, '/home/deployer/apps/task-manager-rg'
