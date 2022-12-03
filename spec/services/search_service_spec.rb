require 'rails_helper'

RSpec.describe SearchService do 
  it "gets data for activities search" do 
    activities = SearchService.get_search(2)
    expect(activities).to be_a(Hash)
    expect(activities[:activity]).to be_a(String)
    expect(activities).to have_key(:price)
  end
end