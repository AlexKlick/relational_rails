# User Story 12, Parent Update (x2)

# As a visitor
# When I visit a parent show page
# Then I see a link to update the parent "Update Parent"
# When I click the link "Update Parent"
# Then I am taken to '/parents/:id/edit' where I  see a form to edit the parent's attributes:
# When I fill out the form with updated information
# And I click the button to submit the form
# Then a `PATCH` request is sent to '/parents/:id',
# the parent's info is updated,
# and I am redirected to the Parent's Show page where I see the parent's updated info
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