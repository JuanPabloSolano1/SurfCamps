# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# location = Location.new(name: "Bali", average_price: 3, description: "One fo the best Surfing Spots")
# location.save

# location1 = Location.new(name: "Maldives", average_price: 3, description: "An Amazing Villa close to the city")
# location1.save

# continent1 = Continent.create(name:"África", description: "Test")
location2 = Location.create(name:"France", continent_id: 1)
# location3 = Location.create(name:"Colombia")
surfcamp1 = Surfcamp.create(name: "Mallorca",location_id: 1, address: "Mallorca")
# surfcamp2 = Surfcamp.create(name: "Canary Islands",location_id: 1)
# surfcamp3 = Surfcamp.create(name: "Marsella",location_id: 2)
# surfcamp4 = Surfcamp.create(name: "Paris",location_id: 2)
# surfcamp5 = Surfcamp.create(name: "Cartagena",location_id: 3)


p "seeds created"

