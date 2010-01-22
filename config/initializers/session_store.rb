# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_petshop_session',
  :secret      => '93a885daa78ad1d2e84fd754ae138e6ef17ee5fdeb78a0fea8508e4f0edee70742db91abc7585215aaa38185f6dec1a749277d4e457905c26f00af857523f4ac'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
