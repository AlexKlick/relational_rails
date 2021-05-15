require 'rails_helper'

RSpec.describe 'the ranges mountain index page' do
    before(:each) do
    
    end

# User Story 5, Parent Children Index (x2)

# As a visitor
# When I visit '/parents/:parent_id/child_table_name'
# Then I see each Child that is associated with that Parent with each Child's attributes:

    it 'shows all of the mountains associated with the range' do
        range = MountainRange.create(name:'Andes', length_km: 7000, western_hemisphere:true)
        mountain = range.mountains.create(name:'Aconcagua', height_m: 6960, skiable:true)
        mountain2 = range.mountains.create(name:'Mount Sneffels', height_m: 4315, skiable:true)

        visit "/mountain_ranges/#{range.id}/mountains"

        expect(page).to have_content(mountain.name)
        expect(page).to have_content(mountain2.name)
    end
end