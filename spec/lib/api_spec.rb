
require './lib/api'
require './spec/spec_helper'

describe "api request" do
  subject(:result) { api_request(35.671208, 139.76517 ) }
  it "should allow accessing the main page" do
    
    expect(result).to eq true
  end
end