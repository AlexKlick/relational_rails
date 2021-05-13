require 'rails_helper'

RSpec describe 'the ranges show page' do
    it 'displays the range name' do
        range = Range.create(name:'Andes', length_km: 7000, western_hemisphere:true)

        visit "/ranges/#{range.id}"
    end
end