require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
    describe "When I visit '/players/:id'" do
        before(:each) do
          @celtics   = Nbateam.create!(name: "Celtics", city: "Boston", number_of_players: 17, playoff_ready: true)  
          @k_garrnet = @celtics.players.create!(name: "Kevin Garrnet", position: "pf", age: 35, height: 83.0, injured: true)
          @rondo     = @celtics.players.create!(name: "Rajon Rondo", position: "pg", age: 35, height: 73.0, injured: false)
        end
        # User Story 4
        it 'I see each Child in the system including the Childs attributes:' do
            visit players_path(@k_garrnet)
            
            expect(page).to have_content(@k_garrnet.name)
            expect(page).to have_content(@k_garrnet.position)
            expect(page).to have_content(@k_garrnet.height)
            expect(page).to have_content(@k_garrnet.injured)

            # expect(page).to_not have_content(@rondo.name)
            # expect(page).to_not have_content(@rondo.position)
            # expect(page).to_not have_content(@rondo.height)
            # expect(page).to_not have_content(@rondo.injured)
        end
    end
end