$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require "rvm/capistrano"
set :rvm_ruby_string, 'jruby-1.6.6@rails3'

set :ssh_options, {:forward_agent => true}
set :use_sudo, false
set :application, 'revok'
set :domain, '66.172.10.186'
set :repository,  'git@github.com:kzinti/magic.git'
set :scm, 'git'
set :deploy_to,   '/www/magic'
set :user, 'deployer'
set :branch, 'master'
set :deploy_via, :remote_cache

role :web, domain  # Your HTTP server, nginx/etc
role :app, domain  # This may be the same as your `Web` server

require "bundler/capistrano"

namespace :deploy do
  task :start do end
  task :stop do end
  task :restart, :roles => :app do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
