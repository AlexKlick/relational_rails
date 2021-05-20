require 'rails_helper'

RSpec.describe 'mountains edit' do
      # User Story 18, Child Update From Childs Index Page (x1)

    # As a visitor
    # When I visit the `child_table_name` index page or a parent `child_table_name` index page
    # Next to every child, I see a link to edit that child's info
    # When I click the link
    # I should be taken to that `child_table_name` edit page where I can update its information just like in User Story 11
    it 'has a link to edit each mountain, this allows mountain to be updated and returns to index' do
      range = MountainRange.create(name:'Andes', length_km: 7000, western_hemisphere:true)
      mountain = range.mountains.create(name:'Aconcagua', height_m: 6960, skiable:true)
      mountain2 = range.mountains.create(name:'Mount Sneffels', height_m: 4316, skiable:true)

      visit "/mountain_ranges/#{range.id}/mountains"
      click_on "edit#{mountain.id}"
      expect(current_path).to eq("/mountain_ranges/#{range.id}/mountains/#{mountain.id}/edit")

    end
end