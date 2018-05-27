require './app'
require './spec/spec_helper'

describe "My Sinatra Application" do
  before do
    module RSpecMixin
      include Rack::Test::Methods
      def app() Sinatra::Application end
    end
    
    RSpec.configure { |c| c.include RSpecMixin } 
  end

  it "should allow accessing the main page" do
    get '/'
    expect(last_response).to be_ok
  end

  it "should allow accessing the callback page" do
    post '/callback'
    expect(last_response).to be_bad_request
  end
end