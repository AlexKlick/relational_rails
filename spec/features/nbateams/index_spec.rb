require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
    describe "When I visit '/nbateams'" do
        before(:each) do
          @celtics = Nbateam.create!(name: "Celtics", city: "Boston", number_of_players: 17, playoff_ready: true)
        end
        # User Story 1
        it 'I see the name of each parent record in the system' do
            visit nbateams_path
            
            expect(page).to have_content(@celtics.name)
        end
    end
end