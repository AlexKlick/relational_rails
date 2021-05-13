require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
    describe "When I visit '/nbateams/:id'" do
        before(:each) do
          @celtics = Nbateam.create!(name: "Celtics", city: "Boston", number_of_players: 17, playoff_ready: true)
        end
        # User Story 1
        it 'I see the Nba Team with that id including the attributes:' do
            visit nbateams_path
            
            expect(page).to have_content(@celtics.name)
        end
    end
end