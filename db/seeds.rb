# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts 'creating 20 users '
20.times do
  user = User.new(
    name: Faker::Name.name
    email: Faker::Internet.email
    adress: Faker::Address.city
    phone_number: Faker::PhoneNumber.phone_number

  )
  user.save
end
puts 'creating 20 boats'
20.times do
boat = Boat.new(
  name: Faker::FunnyName.name
  description: Faker::Vehicle.model
  price: Faker::Commerce.price

)
boat.save
end
puts 'creating 15 orders '
15.times do
  order = Order.new(
    start_date:Faker::Date.in_date_period
    end_date: Faker::Date.in_date_period
  )
  order.save
end
