# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_desoroscopo_session',
  :secret      => 'ca5c258ee94564ee7a863d4ea18f9820a4849937abdf41dd2063477b1b6ed02bc54395c4c77d37796e3e80a058f5d841449159a05eaaaea693d31f55d8abf6aa'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
