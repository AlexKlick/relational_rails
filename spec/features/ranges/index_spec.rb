require 'rails_helper'

RSpec.describe 'the ranges index page' do
    
    #     User Story 1, Parent Index (x2)

    # For range table
    # As a visitors
    # When I visit '/mountain_ranges'
    # Then I see the name of each range record in the system

    it 'displays all of the range names' do
        range = MountainRange.create(name:'Andes', length_km: 7000, western_hemisphere:true)
        range2 = MountainRange.create(name:'Rockies', length_km: 4000, western_hemisphere:true)
    
        visit "/mountain_ranges"
        expect(page).to have_content(range.name)
        expect(page).to have_content(range2.name)
    end
end