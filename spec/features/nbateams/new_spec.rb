require 'rails_helper'   

RSpec.describe 'the NBA Team creation' do
#User Story 11  
  it 'links to the new page from the nba index' do
    visit '/nbateams'    

    click_link('Create NBA Team') 
    expect(current_path).to eq('/nbateams/new')
  end 

  it 'can create a new NBA Team' do  
    visit '/nbateams/new'
    
    fill_in('Name', with: 'Kings')
    click_button('Create NBA Team')

    expect(current_path).to eq("/nbateams")
    expect(page).to have_content("Kings")
  end
end 