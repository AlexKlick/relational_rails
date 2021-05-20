require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
    describe "When I visit '/players/:id'" do
        before(:each) do
          @celtics   = Nbateam.create!(name: "Celtics", city: "Boston", number_of_players: 17, playoff_ready: true)  
          @k_garrnet = @celtics.players.create!(name: "Kevin Garrnet", position: "pf", age: 35, height: 83.0, injured: true)
        end
        # User Story 4
        it 'I see each Child in the system including the Childs attributes:' do
            visit players_path(@k_garrnet)
            
            expect(page).to have_content(@k_garrnet.name)
            expect(page).to have_content(@k_garrnet.position)
            expect(page).to have_content(@k_garrnet.age)
            expect(page).to have_content(@k_garrnet.height)
            expect(page).to have_content(@k_garrnet.injured)
        end
    end
end