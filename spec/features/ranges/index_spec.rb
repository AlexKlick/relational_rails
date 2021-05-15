require 'rails_helper'

RSpec.describe 'the ranges index page' do
    before(:each) do
        @range = MountainRange.create(name:'Andes', length_km: 7000, western_hemisphere:true)
        @range2 = MountainRange.create(name:'Rockies', length_km: 4000, western_hemisphere:true)
    end
    #     User Story 1, Parent Index (x2)

    # For range table
    # As a visitors
    # When I visit '/mountain_ranges'
    # Then I see the name of each range record in the system

    it 'displays all of the range names' do

        visit "/mountain_ranges"
        expect(page).to have_content(@range.name)
        expect(page).to have_content(@range2.name)
    end

    #     User Story 6, Parent Index sorted by Most Recently Created (x2)

    # As a visitor
    # When I visit the parent index,
    # I see that records are ordered by most recently created first
    # And next to each of the records I see when it was created

    it 'is sorted by most rectently created first' do

        visit "/mountain_ranges"
        expect(page.text.index(@range.name)).to be > page.text.index(@range2.name)
    end
end