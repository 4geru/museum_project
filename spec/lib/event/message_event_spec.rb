require './lib/event/message_event'
require './spec/spec_helper'

describe "message event" do
  subject(:result) { message_event('message') }
  it { expect(result).to eq ({ type: 'text', text: 'message' }) }
end