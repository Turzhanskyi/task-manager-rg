# frozen_string_literal: true

lock '~> 3.14.1'

set :application, 'turvitan'

set :repo_url, 'git@github.com:Turzhanskyi/task-manager-rg.git'

set :branch, 'master'
set :default_stage, 'production'

set :log_level, :info

set :linked_files, %w[config/database.yml]
set :linked_dirs, %w[tmp/pids tmp/cache tmp/sockets vendor/bundle public/uploads public/storage]

set :puma_init_active_record, true

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end

    task :seed do
      on roles(:all) do
        within release_path do
          with rails_env: fetch(:rails_env) do
            execute :rake, 'db:seed'
          end
        end
      end
    end

    task :precompile do
      on roles(:all) do
        within release_path do
          with rails_env: fetch(:rails_env) do
            execute :rake, 'assets:precompile --trace'
          end
        end
      end
    end

    task :setup do
      before 'deploy:migrate', :create_db
      invoke :deploy
    end

    task :create_db do
      on roles(:all) do
        within release_path do
          with rails_env: fetch(:rails_env) do
            execute :rake, 'db:create'
          end
        end
      end
    end
  end
  after :finishing, 'deploy:cleanup'
end
