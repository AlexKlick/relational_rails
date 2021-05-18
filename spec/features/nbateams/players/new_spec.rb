require 'rails_helper'   

RSpec.describe 'the Player creation' do
#User Story 13
  before(:each) do
    @nuggets = Nbateam.create!(name: "Nuggets", city: "Denver", number_of_players: 17, playoff_ready: true)    
  end

  it 'links to the new page from the NBA/Player index' do
    visit "/nbateams/#{@nuggets.id}/players"    

    click_link('Create Player') 
    expect(current_path).to eq("/nbateams/#{@nuggets.id}/players/new")
  end 

  xit 'can update a new NBA Team' do  
    visit '/nbateams/new'
    
    fill_in('Name', with: 'Kings')
    click_button('Create NBA Team')

    expect(current_path).to eq("/nbateams")
    expect(page).to have_content("Kings")
  end
end 