require 'rails_helper'   

RSpec.describe 'the NBA Team creation' do
#User Story 11  
  it 'links to the new page from the nba index' do
    visit nbateams_path    
    
    expect(page).to have_link('Create NBA Team')
    
    click_link('Create NBA Team') 
     
    expect(current_path).to eq(new_nbateam_path)

    expect(page).to have_content("New Team")

    fill_in 'name', with: 'Nets'      
    fill_in 'city', with: 'Jersey'
    fill_in 'number_of_players', with: 17
    fill_in 'playoff_ready', with: true

    click_button('Submit')
    
    expect(current_path).to eq(nbateams_path)
    expect(page).to have_content("Nets")
  end 
end 