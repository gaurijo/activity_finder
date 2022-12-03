require 'rails_helper'

RSpec.describe "Search Page" do 
    it 'has a list of activities' do 
        visit "/search"
        
        expect(page).to have_content("Activities")
        expect(page).to have_content("Participants")
        expect(page).to have_content("Price")
    end 
end 