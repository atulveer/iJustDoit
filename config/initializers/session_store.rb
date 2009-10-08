# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ijustdoit_session',
  :secret      => '2156bed3cef2117f08dc8d3b2215b5102b8dbc487b110c2167c8ce67d5c67a9b7b023a68045607e9efa5d1c9ff5cb488d8d6c14dceacfc066f79d01f8cbb92a4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
