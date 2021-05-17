require 'rails_helper'

RSpec.describe 'NBA players index' do 
  before(:each) do  
    @celtics = Nbateam.create!(name: "Celtics", city: "Boston", number_of_players: 17, playoff_ready: true)
    @k_garrnet = @celtics.players.create!(name: "Kevin Garrnet", position: "pf", age: 35, height: 83.0, injured: true)
  end
  # User story 5  
  it 'shows all the players for tha team' do   
    visit "/nbateams/#{@celtics.id}/players"

    expect(page).to have_content(@k_garrnet.name)
  end 
  
  it 'links to each players show page' do
    visit "/nbateams/#{@celtics.id}/players"
     
    click_on @k_garrnet.name  
    
    expect(current_path).to eq("/players/#{@k_garrnet.id}")
  end
end

