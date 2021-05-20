require 'rails_helper'

RSpec.describe 'As a Visitor' do

    # User Story 20, Child Delete (x2)

    # As a visitor
    # When I visit a child show page
    # Then I see a link to delete the child "Delete Child"
    # When I click the link
    # Then a 'DELETE' request is sent to '/child_table_name/:id',
    # the child is deleted,
    # and I am redirected to the child index page where I no longer see this child

    it 'I can delete an artist' do
        @range = MountainRange.create(name:'Andes', length_km: 7000, western_hemisphere:true)
        @mountain = @range.mountains.create(name:'Aconcagua', height_m: 6960, skiable:true)
  
      visit "/mountains/#{@mountain.id}"
  
      click_button 'Delete'
  
      expect(current_path).to eq('/mountains')
      expect(page).to_not have_content(@mountain.name)
    end
  end
