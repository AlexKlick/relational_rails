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

    #     User Story 16, Sort Parent's Children in Alphabetical Order by name (x2)

    # As a visitor
    # When I visit the Parent's children Index Page
    # Then I see a link to sort children in alphabetical order
    # When I click on the link
    # I'm taken back to the Parent's children Index Page where I see all of the parent's children in alphabetical order

    it 'has a button to sort the mountains alphabetically' do
      range = MountainRange.create(name:'Andes', length_km: 7000, western_hemisphere:true)
      mountain = range.mountains.create(name:'Aconcagua', height_m: 6960, skiable:true)
      mountain2 = range.mountains.create(name:'Mount Sneffels', height_m: 4315, skiable:true)
        visit "/mountain_ranges/#{range.id}/mountains"
        find(:xpath, './/div/div/div/table/tr[2]/td[2]').native.inner_html
        #expect(page).to have_selector("table tr:nth-child(2):td", content:@mountain.name)
        expect(find(:xpath, './/div/div/div/table/tr[2]/td[2]').native.inner_html).to eq "6960"
        expect(find(:xpath, './/div/div/div/table/tr[3]/td[2]').native.inner_html).to eq "4315"
        expect(find(:xpath, './/div/div/div/table/tr[3]/td[2]').native.inner_html).to eq "4315"
        expect(find(:xpath, './/div/div/div/table/tr[2]/td[2]').native.inner_html).to eq "6960"
    end
    #     User Story 21, Display Records Over a Given Threshold (x2)

    # As a visitor
    # When I visit the Parent's children Index Page
    # I see a form that allows me to input a number value
    # When I input a number value and click the submit button that reads 'Only return records with more than `number` of `column_name`'
    # Then I am brought back to the current index page with only the records that meet that threshold shown.
    # it 'has a button to return only mountains that have a height greater than x meters' do
    #   range = MountainRange.create(name:'Andes', length_km: 7000, western_hemisphere:true)
    #   mountain = range.mountains.create(name:'Aconcagua', height_m: 6960, skiable:true)
    #   mountain2 = range.mountains.create(name:'Mount Sneffels', height_m: 4316, skiable:true)
    #   mountain3 = range.mountains.create(name:'Mount snoopy', height_m: 4315, skiable:true)
    #   mountain4 = range.mountains.create(name:'Mount goofy', height_m: 4314, skiable:true)
    #   mountain5 = range.mountains.create(name:'Mount snickers', height_m: 4300, skiable:true)
    #   mountain6 = range.mountains.create(name:'Mount fake Mount', height_m: 400000, skiable:true)
    #   visit "/mountain_ranges/#{range.id}/mountains"

    #   fill_in 'name', with: 4315
    #   #save_and_open_page
    #   #capybara javascript no like?
    #   click_on('wtfcapybara')
    #   expect(page).to have_content(mountain.name)
    #   expect(page).to have_content(mountain2.name)
    #   expect(page).to have_content(mountain6.name)
    #   expect(page).to_not have_content(mountain3.name)
    #   expect(page).to_not have_content(mountain4.name)
    #   expect(page).to_not have_content(mountain5.name)
    # end


end