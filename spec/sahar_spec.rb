require File.dirname(__FILE__) + '/spec_helper'

describe 'Sahar' do
  include Rack::Test::Methods
  
  def app
    Sinatra::Application
  end
  
  it 'has a root page' do
    get '/'
    last_response.should be_ok
    last_response.body.should == 'Hello world'
  end
  
  it 'should return 404 when page cannot be found' do
    get '/404'
    last_response.status.should == 404
  end
end