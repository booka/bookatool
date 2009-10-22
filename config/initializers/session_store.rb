# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bpoc_session',
  :secret      => '429517d831f124f39e3559deff38493e8c498a1ce8d55af15ec1efc9d7dee4a1104c784bb5ba334f13cbca7752e87bed537d0a0d2b492523e4c67c5f66338f90'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
