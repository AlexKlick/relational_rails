require 'rails_helper'

RSpec.describe 'the NBA Team edit' do
    #User Story 12
    it 'links to the edit page' do  
      nbateam = Nbateam.create!(name: 'Kings')  

      visit '/nbateams'
      
      click_button "Edit #{nbateam.name}"

      expect(current_path).to eq("/nbateams/#{nbateam.id}/edit")
    end  

    it 'can edit the NBA Team' do 
      nbateam = Nbateam.create!(name: 'King') 
        
      visit "/nbateams"
      expect(page).to have_content('King')
      click_button "Edit #{nbateam.name}"

      fill_in('Name', with: 'Kings')
      click_button "Update NBA Team"

      expect(current_path).to eq("/nbateams")
      expect(page).to have_content('Kings')
    end  
end