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
        binding.pry
        visit "/mountain_ranges"
        expect(page.text.index(@range.name)).to be > page.text.index(@range2.name)
    end

    #User Story 11, Parent Creation (x2)

    # As a visitor
    # When I visit the Parent Index page
    # Then I see a link to create a new Parent record, "New Parent"
    # When I click this link
    # Then I am taken to '/parents/new' where I  see a form for a new parent record
    # When I fill out the form with a new parent's attributes:
    # And I click the button "Create Parent" to submit the form
    # Then a `POST` request is sent to the '/parents' route,
    # a new parent record is created,
    # and I am redirected to the Parent Index page where I see the new Parent displayed.

    it 'has a link to create new parent, to /mountain_ranges/new with a new range form. Submit the form, post request sent to /mountain_ranges. New range created, and redirected to index with new range' do
        visit "/mountain_ranges"
        page.assert_selector(:css, 'a[href="/mountain_ranges/new"]')
        link = page.find(:css, 'a[href="/mountain_ranges/new"]')
        click_on "New Range"
        expect(current_path).to eq "/mountain_ranges/new"
        expect(page).to have_selector("form")
        fill_in 'range_name', with: 'Himalayas'
        fill_in 'length_km', with: '3000'
        choose(option: true)
        find_field('range_name').value.should have_content('Himalayas')
        find_field('length_km').value.should have_content('3000')
        
    end

end