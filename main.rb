require 'sinatra'
require 'rack-flash'

configure do
  enable :sessions
  use Rack::Flash
  
  @key = ENV['COUCHDB_KEY']
  @password = ENV['COUCHDB_PASSWORD']
  @db = ENV['COUCHDB_DB']
end

get '/' do
  "Hello world"
end

not_found do
  'Oops, nothing here'
end