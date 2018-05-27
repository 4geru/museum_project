require './lib/api'
require './spec/spec_helper'

describe "api request" do
  subject(:result) { api_request(35.671208, 139.76517, schedule='upcoming', sort_order='mostpopular'  ) }
  it { expect(result.length).to be > 1 }
  
  context 'check content' do
    subject(:content) { result.first }
    context 'contain' do
      it { expect(content).to have_key('PlaceName') }
      it { expect(content).to have_key('Name') }
      it { expect(content).to have_key('Description') }
      it { expect(content).to have_key('Image') }
      it { expect(content).to have_key('Latitude') }
      it { expect(content).to have_key('Longitude') }
    end
    
    context 'not contain' do
      it { expect(content).not_to have_key('Venue') }
    end
  end
end