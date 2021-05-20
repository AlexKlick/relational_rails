require 'rails_helper'   

RSpec.describe 'the Player creation' do
#User Story 13
  before(:each) do
    @nuggets = Nbateam.create!(name: "Nuggets", city: "Denver", number_of_players: 17, playoff_ready: true)    
  end

  it 'I see a link to create player' do
    visit nba_players_path(@nuggets)     
    
    expect(page).to have_link("Create Player")

    click_link('Create Player') 

    expect(current_path).to eq(new_nba_player_path(@nuggets))
    expect(page).to have_content("New NBA Player")
    
    fill_in 'name', with: 'Will Barton'
    fill_in 'position', with: 'SG'
    fill_in 'age', with: 27
    fill_in 'height', with: 84.0
    fill_in 'injured', with: true

    click_button 'Submit'
    
    expect(current_path).to eq(nba_players_path(@nuggets))
    expect(page).to have_content('Will Barton')
  end 
end 