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

boat = Boat.new(
  name: 'bateau',
  user: user1,
  description: "yacht",
  price: 100,


)
boat.save
