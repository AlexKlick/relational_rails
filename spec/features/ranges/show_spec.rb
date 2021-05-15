require 'rails_helper'

RSpec.describe 'the ranges show page' do
    before(:each) do
        @range = MountainRange.create(name:'Andes', length_km: 7000, western_hemisphere:true)
        @range2 = MountainRange.create(name:'Rockies', length_km: 4000, western_hemisphere:true)
    end

#         User Story 2, Parent Show (x2)

# As a visitor
# When I visit '/mountain_ranges/:id'
# Then I see the parent with that id including the parent's attributes:
# - data from each column that is on the parent table

    it "displays the correct data for a given mnt range's id" do

        visit "/mountain_ranges/#{@range.id}"
        expect(page).to have_content(@range.name)
        expect(page).to_not have_content(@range2.name)

    end

#     User Story 7, Parent Child Count (x2)

# As a visitor
# When I visit a parent's show page
# I see a count of the number of children associated with this parent

    it 'displays the number of mountains in the range' do
        mountain = @range.mountains.create(name:'Aconcagua', height_m: 6960, skiable:true)
        mountain2 = @range.mountains.create(name:'Mount Sneffels', height_m: 4315, skiable:true)
        visit "/mountain_ranges/#{@range.id}"
        expect(page).to have_content("Mountains in range: 2")
    end
end