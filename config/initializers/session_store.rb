# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_petshop_session',
  :secret      => '19ce3176952f87126461acdf22f3a954b0c40e5ee05bb77e5b5eba292d42d6f924cdf405f4fe2c008301e4fe0f711ded30231a3ee5662a64d934e25bb0668f58'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
