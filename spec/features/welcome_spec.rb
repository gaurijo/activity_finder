require 'rails_helper'

RSpec.describe "Welcome Page" do 
    it 'has a form to search for activities' do 
        visit root_path
        
        expect(page).to have_content("Activity Finder")
        expect(page).to have_field(:num_participants)
        expect(page).to have_button("Find Activities")
    end 

    it 'redirects to an activity page' do 
        visit root_path 

        fill_in :num_participants, with: 1
        click_button 'Find Activities'

        expect(current_path).to eq("/search")
    end
end 