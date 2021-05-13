# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
celtics = Nbateam.create!(name: "Celtics", city: "Boston", number_of_players: 17, playoff_ready: true)
k_garrnet = celtics.players.create!(name: "Kevin Garrnet", position: "pf", age: 35, height: 83.0, injured: true) 