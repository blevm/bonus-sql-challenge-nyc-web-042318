require 'bundler'
require "sqlite3"
require 'csv'
require_relative '../db/seed.rb'

Bundler.require

# Setup a DB connection here
db = SQLite3::Database.new ":memory:"

# db.execute("CREATE TABLE new_guests (
#     id INTEGER PRIMARY KEY,
#     show_year TEXT
#     occupation TEXT,
#     show_date TEXT,
#     topic_group TEXT,
#     name TEXT
#   )")
