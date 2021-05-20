require 'rails_helper'

RSpec.describe 'Destroy the NBA Team' do  
    before(:each) do
      @clippers = Nbateam.create!(name: "CLippers", city: "Los Angeles", number_of_players: 17, playoff_ready: true)
    end

    it 'I see a link to destroy the NBA team' do
       visit  nba_show_path(@clippers)    

       expect(page).to have_button("Delete Team")

       click_button("Delete Team")

       expect(current_path).to eq(nbateams_path) 
       expect(page).to_not have_content("Clippers")
    end
end