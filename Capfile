# frozen_string_literal: true

require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/rbenv'
require 'capistrano/bundler'
require 'capistrano/passenger'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'

require 'capistrano/linked_files'

Dir.glob('lib/capistrano/tasks/*.cap').each { |r| import r }

require 'capistrano/scm/git'
install_plugin Capistrano::SCM::Git

set :rbenv_type, :user
set :rbenv_ruby, '2.7.2'
