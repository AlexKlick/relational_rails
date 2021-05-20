require 'rails_helper'

RSpec.describe 'the Player edit' do
    before(:each) do
      @nuggets = Nbateam.create!(name: "Nuggets", city: "Denver", number_of_players: 17, playoff_ready: true)    
      @mpj = @nuggets.players.create!(name: "Michael Porto Jr", position: "SF", age: 22, height: 82.0, injured: false)
    end

    #User Story 14
    it 'I see a link to Update player' do  
      visit player_show_path(@mpj)     
      
      expect(page).to have_link("Update Player")  

      click_link("Update Player")
      
      expect(current_path).to eq(edit_player_path(@mpj))
      expect(page).to have_content("Edit NBA Player")

      fill_in 'Name', with: 'Michael Porter Jr'
      
      click_button "Submit"
      
      expect(current_path).to eq(player_show_path(@mpj))

      expect(page).to have_content("Michael Porter Jr")
    end
end