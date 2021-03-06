Nbateam.destroy_all
Player.destroy_all
MountainRange.destroy_all
Mountain.destroy_all
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


#MountainRange.create(name: "Cascades",length_km: 1100, western_hemisphere: true, pic: 'https://en.wikipedia.org/wiki/File:Mount_Rainier_and_other_Cascades_mountains_poking_through_clouds.jpg')
ranges = [["Cascades",1100,true,'https://en.wikipedia.org/wiki/File:Mount_Rainier_and_other_Cascades_mountains_poking_through_clouds.jpg'],
["Rockies", 3000, true],
["Himalayas", 2400, false]
]

mountains = [['Mount Rainier', 4392, true, "Cascades"],
["Mount Shasta", 4317, true,  "Cascades"],
["Mount Hood", 3426, true,  "Cascades"],
["Mount Baker", 3286, true, "Cascades"],
["Mount Adams", 3742, false, "Cascades"],
[ "Mount Elbert", 4401, false , "Rockies"],
[ "Mount Sneffels",4315 , true , "Rockies"],
[ "Pikes Peak",4302, false , "Rockies"],
[ "Grand Teton", 4198 , false , "Rockies"],
[ "Wheeler Peak",4013 , false , "Rockies"],
[ "Mount Everest", 8848 , true , "Himalayas"],
[ "K2", 8611 , true, "Himalayas"],
[ "Lhotse", 8516, false, "Himalayas"],
[ "Makalu", 8485, false, "Himalayas"],
[ "Nanga Parbat", 8126, true, "Himalayas"]
]

ranges.each do |range|
  MountainRange.create(name: range[0], length_km: range[1], western_hemisphere: range[2])
end

mountains.each do |mountain|
  Mountain.create(name:mountain[0], height_m:mountain[1], skiable: mountain[2], mountain_range_id: MountainRange.where('name = ?', mountain[3])[0].id)
end