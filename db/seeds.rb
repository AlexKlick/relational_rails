# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
celtics = Nbateam.create!(name: "Celtics", city: "Boston", number_of_players: 17, playoff_ready: true)
k_garrnet = celtics.players.create!(name: "Kevin Garrnet", position: "PF", age: 35, height: 83.0, injured: true)
j_tatum = celtics.players.create!(name: "Jayson Tatum", position: "SF", age: 23, height: 80.0, injured: false) 

nuggets = Nbateam.create!(name: "Nuggets", city: "Denver", number_of_players: 17, playoff_ready: true)
bandido = nuggets.players.create!(name: "Facundo Campazzo", position: "PG", age: 30, height: 70.0, injured: false)
joker = nuggets.players.create!(name: "Nikola Jokic", position: "C", age: 25, height: 83.0, injured: false)

lakers = Nbateam.create!(name: "Lakers", city: "Los Angeles", number_of_players: 17, playoff_ready: true)
king = lakers.players.create!(name: "Lebron James", position: "PG", age: 36, height: 81.0, injured: false)
the_brow = lakers.players.create!(name: "Anthony Davis", position: "PF", age: 28, height: 82.0, injured: false)

jazz = Nbateam.create!(name: "Jazz", city: "Utah", number_of_players: 17, playoff_ready: true)
spida = jazz.players.create!(name: "Donocan Mitchell", position: "PG", age: 24, height: 73.0, injured: false)
stifle_tower = jazz.players.create!(name: "Rudy Gobert", position: "C", age: 28, height: 85.0, injured: false)

philly = Nbateam.create!(name: "76ers", city: "Philiadelphia", number_of_players: 17, playoff_ready: true)
jojo = philly.players.create!(name: "Joel Embid", position: "C", age: 27, height: 85.0, injured: false)
b_simmions = philly.players.create!(name: "Ben Simmons", position: "PG", age: 24, height: 82.0, injured: false)



