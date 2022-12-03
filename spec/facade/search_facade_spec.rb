require 'rails_helper'

RSpec.describe SearchFacade do 
  it "creates activities" do 
    activities = SearchFacade.create_activities(1)

    expect(activities).to be_a(Search)
    expect(activities.activity).to be_a(String)
  end
end