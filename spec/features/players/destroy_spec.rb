require 'rails_helper'

RSpec.describe 'Destroy the Player' do  
    before(:each) do
      @clippers = Nbateam.create!(name: "CLippers", city: "Los Angeles", number_of_players: 17, playoff_ready: true)
      @claw = @clippers.players.create!(name: "Kawhi Leonard", position: "SF", age: 30, height: 87.0, injured: false)
    end

    it 'I see a link to destroy the Player' do
       visit  player_show_path(@claw)    

       expect(page).to have_button("Delete")

       click_button("Delete")

       expect(current_path).to eq(players_path) 
       expect(page).to_not have_content(@claw.name)
    end
end