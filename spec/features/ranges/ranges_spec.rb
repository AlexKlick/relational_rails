require 'rails_helper'

RSpec.describe 'the ranges index page' do
    #     User Story 1, Parent Index (x2)

    # For range table
    # As a visitor
    # When I visit '/mountain_ranges'
    # Then I see the name of each range record in the system

        it 'displays all of the range names' do
            range = MountainRange.create(name:'Andes', length_km: 7000, western_hemisphere:true)
            range2 = MountainRange.create(name:'Rockies', length_km: 4000, western_hemisphere:true)
        
            visit "/mountain_ranges"
            expect(page).to have_content(range.name)
            expect(page).to have_content(range2.name)
        end
#         User Story 2, Parent Show (x2)

# As a visitor
# When I visit '/mountain_ranges/:id'
# Then I see the parent with that id including the parent's attributes:
# - data from each column that is on the parent table

        it "displays the correct data for a given mnt range's id" do
            range = MountainRange.create(name:'Andes', length_km: 7000, western_hemisphere:true)
            range2 = MountainRange.create(name:'Rockies', length_km: 4000, western_hemisphere:true)
            visit "/mountain_ranges/#{range.id}"
            expect(page).to have_content(range.name)
            expect(page).to_not have_content(range2.name)

        end


end