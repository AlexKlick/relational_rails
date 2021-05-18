require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
    describe "When I visit '/nbateams/:id'" do
        before(:each) do
          @celtics = Nbateam.create!(name: "Celtics", city: "Boston", number_of_players: 17, playoff_ready: true)
        end
        # User Story 2
        it 'I see the Nba team with that id including the  attributes:' do
            visit nbateam_path(@celtics)
            
            expect(page).to have_content(@celtics.name)
            expect(page).to have_content(@celtics.city)
            expect(page).to have_content(@celtics.playoff_ready)
            expect(page).to have_content(@celtics.number_of_players)
        end
    end
end