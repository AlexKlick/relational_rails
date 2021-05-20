require 'rails_helper'

RSpec.describe 'As a Visitor' do
        #     User Story 19, Parent Delete (x2)

    # As a visitor
    # When I visit a parent show page
    # Then I see a link to delete the parent
    # When I click the link "Delete Parent"
    # Then a 'DELETE' request is sent to '/parents/:id',
    # the parent is deleted, and all child records are deleted
    # and I am redirected to the parent index page where I no longer see this parent
  it 'I can delete a range' do
    range = MountainRange.create(name:'Andes', length_km: 7000, western_hemisphere:true)

    visit "/mountain_ranges/#{range.id}"

    click_button 'Delete'

    expect(current_path).to eq('/mountain_ranges')
    expect(page).to_not have_content(range.name)
    expect(page).to_not have_button('Delete')
  end
end