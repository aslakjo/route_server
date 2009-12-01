# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_route_server_session',
  :secret      => '5617849a21bd1cf67690221c6bda35b79d7c3e0fc739bad6d5cbe23c48f449d6a35129ffa1d4c537ae087b74aa661a150d5683a8569afcb3fe9f699ef8190f6c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
