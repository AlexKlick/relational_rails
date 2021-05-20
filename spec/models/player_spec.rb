require 'rails_helper'

RSpec.describe Player, type: :model do
  it {should belong_to :nbateam}  
  
    #User Story 15
    it 'Return Records where Players are injured' do
      nuggets = Nbateam.create!(name: "Nuggets", city: "Denver", number_of_players: 17, playoff_ready: true)
      unc = nuggets.players.create!(name: "Paul Millsap", position: "PF", age: 35, height: 87.0, injured: true)
      celtics = Nbateam.create!(name: "Celtics", city: "")
      j_brown = celtics.players.create!(name: "Jaylon Brown", position: "SG", age: 24, height: 85.0, injured: false)
      
      expect(Player.injured).to eq([unc])
    end
end 