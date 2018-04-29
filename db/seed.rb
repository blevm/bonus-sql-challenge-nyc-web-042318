# Parse the CSV and seed the database here! Run 'ruby db/seed' to execute this code.
require 'sqlite3'
require 'csv'
require 'pry'
require_relative '../config/environment.rb'

db = SQLite3::Database.open ":memory:"

#binding.pry

db.execute("CREATE TABLE new_guests (
    id INTEGER PRIMARY KEY,
    show_year TEXT,
    occupation TEXT,
    show_date TEXT,
    topic_group TEXT,
    name TEXT
  )")


CSV.foreach("daily_show_guests.csv") do |row|
  #binding.pry
  db.execute("INSERT INTO new_guests(
         show_year,
         occupation,
         show_date,
         topic_group,
         name)
       VALUES
      ('#{row[0]}', '#{row[1]}', '#{row[2]}', '#{row[3]}', '#{row[4]}') ")
end

# CSV.foreach("daily_show_guests.csv") do |row|
#     db.execute("INSERT INTO guests(
#       year,
#       occupation,
#       show_date,
#       group,
#       name)
#     VALUES
#    (#{row[0]}, '#{row[1]}', '#{row[2]}', '#{row[3]}', '#{row[4]}') ")
# end
