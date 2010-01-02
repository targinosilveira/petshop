# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_petshop_session',
  :secret      => 'bacb4f7e59616a62677a59e4bda322c34b6fa0385b66b00293d1ecd7be0984edd36fc167f8a0388db33e074480469d86dcc4ef65b4551d35a74bc7e906a8f162'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
