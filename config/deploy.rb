# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'peatio'
set :repo_url, 'git@github.com:neeraji2it/Petio.git' 
set :deploy_to, '/var/www/petio.renosofttechnosys.com'
set :branch, 'master'
set :domain, 'petio.renosofttechnosys.com'

set :port, 2222

set :use_sudo, false

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default deploy_to directory is /var/www/my_app
# set :deploy_to, '/var/www/my_app'

# Default value for :scm is :git
set :scm, :git

# Default value for :format is :pretty
set :format, :pretty

# Default value for :log_level is :debug
set :log_level, :debug 
#peatio/as petio@petio.rensofttechnosys.com
#DEBUG [b696f8c5] Command: /usr/bin/env mkdir -p /tmp/peatio/


# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
set :linked_files, %w{config/database.yml config/application.yml config/banks.yml config/currencies.yml config/markets.yml config/member_tags.yml config/slack.yml config/withdraw_channels.yml}

# Default value for linked_dirs is []
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5

# task :environment do
#   invoke :'rbenv:load'
# end

# task :setup => :environment do
#   queue! %[mkdir -p "#{deploy_to}/shared/log"]
#   queue! %[chmod g+rx,u+rwx "#{deploy_to}/shared/log"]

#   queue! %[mkdir -p "#{deploy_to}/shared/config"]
#   queue! %[chmod g+rx,u+rwx "#{deploy_to}/shared/config"]

#   queue! %[mkdir -p "#{deploy_to}/shared/tmp"]
#   queue! %[chmod g+rx,u+rwx "#{deploy_to}/shared/tmp"]

#   queue! %[mkdir -p "#{deploy_to}/shared/public/uploads"]
#   queue! %[chmod g+rx,u+rwx "#{deploy_to}/shared/public/uploads"]

#   queue! %[touch "#{deploy_to}/shared/config/database.yml"]
#   queue! %[touch "#{deploy_to}/shared/config/currencies.yml"]
#   queue! %[touch "#{deploy_to}/shared/config/application.yml"]
#   queue! %[touch "#{deploy_to}/shared/config/markets.yml"]
#   queue! %[touch "#{deploy_to}/shared/config/amqp.yml"]
#   queue! %[touch "#{deploy_to}/shared/config/banks.yml"]
#   queue! %[touch "#{deploy_to}/shared/config/deposit_channels.yml"]
#   queue! %[touch "#{deploy_to}/shared/config/withdraw_channels.yml"]
# end

# namespace :passenger do
#   desc "Restart Passenger"
#   task :restart do
#     queue %{
#       echo "-----> Restarting passenger"
#       cd #{deploy_to}/current
#       #{echo_cmd %[mkdir -p tmp]}
#       #{echo_cmd %[touch tmp/restart.txt]}
#     }
#   end
# end

# namespace :rails do
#   task :touch_client_i18n_assets do
#     queue %[
#       echo "-----> Touching clint i18n assets"
#       #{echo_cmd %[RAILS_ENV=production bundle exec rake deploy:touch_client_i18n_assets]}
#     ]
#   end
# end

# namespace :daemons do
#   desc "Start Daemons"
#   task start: :environment do
#     queue %{
#       cd #{deploy_to}/current
#       RAILS_ENV=production bundle exec ./bin/rake daemons:start
#       echo Daemons START DONE!!!
#     }
#   end

#   desc "Stop Daemons"
#   task stop: :environment do
#     queue %{
#       cd #{deploy_to}/current
#       RAILS_ENV=production bundle exec ./bin/rake daemons:stop
#       echo Daemons STOP DONE!!!
#     }
#   end

#   desc "Query Daemons"
#   task status: :environment do
#     queue %{
#       cd #{deploy_to}/current
#       RAILS_ENV=production bundle exec ./bin/rake daemons:status
#     }
#   end
# end

# desc "Generate liability proof"
# task 'solvency:liability_proof' do
#   queue "cd #{deploy_to}/current && RAILS_ENV=production bundle exec rake solvency:liability_proof"
# end
#namespace :deploy do

 # desc 'Restart application'
  #task :restart do
   # on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    #end
  #end

  #after :publishing, :restart

  #after :restart, :clear_cache do
    # roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    #end
  #end

#end
