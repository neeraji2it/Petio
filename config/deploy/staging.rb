# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

role :app, %w{shivraj@23.227.172.67}
role :web, %w{shivraj@23.227.172.67}
role :db,  %w{shivraj@23.227.172.67}


# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

server '23.227.177.94', user: 'shivraj', roles: %w{web app}


set :repo_url, 'git@github.com:neeraji2it/Petio.git' 
set :deploy_to, '/var/www/petio.com'
set :branch, 'master'
set :domain, '23.227.177.94'

# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
# set :ssh_options, {
#   keys: %w(/home/root/.ssh/id_rsa),
#   forward_agent: true,
#   auth_methods: %w(HgfhYJYHgyjuykK9),
#   port: 2222
# }
#
# And/or per server (overrides global)
# ------------------------------------
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
