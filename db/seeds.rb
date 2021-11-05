# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Boat.destroy_all
User.destroy_all

puts 'creating users '

user1 = User.new(
  email: "diouri@test.com",
  password: "password"
)
user1.save

user2 = User.new(
  email: "daoudi@test.com",
  password: "password"
)
user2.save

puts 'creating boats'

boat1 = Boat.new(
  name: 'Sirius',
  user: user1,
  description: "yacht",
  price: 1500,
)
boat1.save

boat2 = Boat.new(
  name: 'Altaïr',
  user: user1,
  description: "vedette",
  price: 1500,
)
boat2.save

boat3 = Boat.new(
  name:'PounPoun',
  user: user2,
  description: "super yacht",
   price: 2000,
)
boat3.save

boat4 = Boat.new(
  name:'Amouaj',
  user: user2,
  description: "Day-cruiser",
   price: 2500,
)
boat4.save

boat5 = Boat.new(
  name: 'Winder',
  user: user2,
  description: "jet-boat",
  price: 2000,
)
boat5.save

boat6 = Boat.new(
  name: 'Touareg',
  user: user2,
  description: "jet-boat",
  price: 6000,
)
boat6.save
