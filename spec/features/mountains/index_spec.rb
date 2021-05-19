require 'rails_helper'

RSpec.describe 'the mountain index page' do
    before(:each) do
        @range = MountainRange.create(name:'Andes', length_km: 7000, western_hemisphere:true)
        @mountain = @range.mountains.create(name:'Aconcagua', height_m: 6960, skiable:true)
        @mountain2 = @range.mountains.create(name:'Mount Sneffels', height_m: 4315, skiable:true)
    end
    # User Story 3, Child Index (x2)

    # As a visitor
    # When I visit '/child_table_name'
    # Then I see each Child in the system including the Child's attributes:

    it 'displays all of the mountain names' do
        visit "/mountains"
        expect(page).to have_content(@mountain.name)
        expect(page).to have_content(@mountain2.name)
    end

    #     User Story 8, Child Index Link

    # As a visitor
    # When I visit any page on the site
    # Then I see a link at the top of the page that takes me to the Child Index

    it 'has a link on every page of the site to the mountains index' do
        
    end

    #     User Story 15, Child Index only shows `true` Records (x2)

    # As a visitor
    # When I visit the child index
    # Then I only see records where the boolean column is `true`

    it 'has only records where skiable is true' do
        
    end
end
