require 'pg'
require 'pry'
require_relative './author'
 
# Establish a connection to the database (requires internet since it's on heroku!)
# Note: You'll want to put in your own heroku creds
puts "establishing connection ..."
conn = PG.connect(
  dbname: 'das1blgsip5efu',
  port: 5432,
  user: 'davhepdgxllxsv',
  host: 'ec2-184-73-251-115.compute-1.amazonaws.com',
  password: 'bShNh7qeXTKxg11HwTcoQCqXYY'
)
 
Author.connection = conn
puts "ALL Authors"
puts Author.all.inspect
puts "Author with id 7805"
puts Author.find(7805)
 
conn.close
 