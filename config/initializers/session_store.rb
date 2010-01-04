# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_petshop_session',
  :secret      => '5094f9dad83129345241f837183dc04f214349ce1238789e647a89c7a0f4ebf16b7e58d627584147071918d0ce3edfac52f6a5cc630cf5ac7e6c5afc0fa29fd0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
