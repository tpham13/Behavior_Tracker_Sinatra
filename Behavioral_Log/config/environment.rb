ENV['SINATRA_ENV'] ||= "development"

api_key = ENV['MY_SECRET']  #'my secret' is a key value pair and the application code can will be able to read the key from the 'environment' 

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection( 
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

# #this is a replacement for the three lines of code above
# configure :development do
#     set :database, "sqlite:db/#{ENV['SINATRA_ENV']}.db"
# end
require_relative '../secrets'
require './app/controllers/application_controller'
require_all 'app'
