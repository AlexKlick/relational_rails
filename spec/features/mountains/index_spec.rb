require 'rails_helper'

RSpec.describe 'the mountain index page' do
    before(:each) do
        @range = MountainRange.create(name:'Andes', length_km: 7000, western_hemisphere:true)
        @mountain = @range.mountains.create(name:'Aconcagua', height_m: 6960, skiable:true)
        @mountain2 = @range.mountains.create(name:'Mount Sneffels', height_m: 4315, skiable:false)
    end
    # User Story 3, Child Index (x2)

    # As a visitor
    # When I visit '/child_table_name'
    # Then I see each Child in the system including the Child's attributes:

    it 'displays all of the mountain names' do
        visit "/mountains"
        expect(page).to have_content(@mountain.name)
    end

    #     User Story 8, Child Index Link

    # As a visitor
    # When I visit any page on the site
    # Then I see a link at the top of the page that takes me to the Child Index

    it 'has a link on every page of the site to the mountains index' do
        visit '/'
        expect(page).to have_css("a", text: "All Mountains")
        visit '/nbateams'
        expect(page).to have_css("a", text: "All Mountains")
    end

    #     User Story 15, Child Index only shows `true` Records (x2)

    # As a visitor
    # When I visit the child index
    # Then I only see records where the boolean column is `true`

    it 'has only records where skiable is true' do
        visit '/mountains'
        expect(page).to have_content(@mountain.name)
        expect(page).to_not have_content(@mountain2.name)
    end
    # User Story 18, Child Update From Childs Index Page (x1)

    # As a visitor
    # When I visit the `child_table_name` index page or a parent `child_table_name` index page
    # Next to every child, I see a link to edit that child's info
    # When I click the link
    # I should be taken to that `child_table_name` edit page where I can update its information just like in User Story 11
    it 'has a link for every mountain to edit. after update, returns to mountains index page' do
      visit '/mountains'
      click_on "edit#{@mountain.id}"
      expect(current_path).to eq("/mountains/#{@mountain.id}/edit")
      fill_in 'Mountain name', with: 'foofoo'
      fill_in 'Height m', with: '1000'
      click_on("Submit")
      expect(current_path).to eq("/mountains")
      expect(page).to have_content('foofoo')
      expect(page).to have_content('1000')
      expect(page).to have_content('true')
    end
    #     User Story 23, Child Delete From Childs Index Page (x1)

    # As a visitor
    # When I visit the `child_table_name` index page or a parent `child_table_name` index page
    # Next to every child, I see a link to delete that child
    # When I click the link
    # I should be taken to the `child_table_name` index page where I no longer see that child
    it 'has a link to delete every mountain. When clicked, it deletes mountain, and takes me back to the mountains index, where the mountain is gone' do
      visit '/mountains'
      click_on "delete"
      expect(current_path).to eq("/mountains")
      expect(page).to_not have_content(@mountain.name)
    end
end
