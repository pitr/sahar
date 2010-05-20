require 'sinatra'
require 'rack-flash'
require 'yaml'

configure do
  enable :sessions
  use Rack::Flash
  
  @config = YAML::load(File.open("config.yaml"))
end

get '/' do
  "Hello world"
end

not_found do
  'Oops, nothing here'
end