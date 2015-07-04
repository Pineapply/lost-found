# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Missing.create(name: "Cello", description: "Cello with red sticker", type:"Missing")
Missing.create(name: "Umbrella", description: "Black Umbrella", type:"Missing")
Missing.create(name: "Wallet", description: "Blue wallet", type:"Missing")
Missing.create(name: "Iphone", description: "Iphone 6 with pink case", type:"Missing")
Missing.create(name: "Laptop", description: "Macbook-pro 15 inches with Github sticker on the cover", type:"Missing")

Reported.create(name: "Cello", description: "Cello with red sticker", type:"Reported")
Reported.create(name: "Gameboy", description: "Game console", type:"Reported")
Reported.create(name: "Wine", description: "Good Wine", type:"Reported")
Reported.create(name: "Beer", description: "James Boag", type:"Reported")
Reported.create(name: "Jacket", description: "Nice Jacket", type:"Reported")
