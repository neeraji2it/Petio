# server-based syntax
role :app, %w{shivraj@23.227.172.67}
role :web, %w{shivraj@23.227.172.67}
role :db, %w{shivraj@23.227.172.67}
# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.
server '23.227.172.67', user: 'shivraj', roles: %w{web app}
set :domain, '23.227.177.94'
set :deploy_to, '/var/www/peatio.com/public_html'
set :branch, 'staging'
set :deploy_user, 'shivraj'
set :log_level, :debug