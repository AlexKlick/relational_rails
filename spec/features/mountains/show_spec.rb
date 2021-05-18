require 'rails_helper'

RSpec.describe 'the mountain index page' do
    before(:each) do
    
    end
        # User Story 4, Child Show (x2)

    # As a visitor
    # When I visit '/child_table_name/:id'
    # Then I see the child with that id including the child's attributes:
    it 'displays the correct mountain name' do
        range = MountainRange.create(name:'Andes', length_km: 7000, western_hemisphere:true)
        mountain = range.mountains.create(name:'Aconcagua', height_m: 6960, skiable:true)
        mountain2 = range.mountains.create(name:'Mount Sneffels', height_m: 4315, skiable:true)
        visit "/mountains/#{mountain.id}"

        expect(page).to have_content(mountain.name)
    end
end