# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all

8.times do
  Flat.create!(
    name: "#{Faker::Dessert.topping}",
    address: "#{rand(1..10)} #{Faker::Address.street_name} #{Faker::Address.city} W9 1DT",
    description: "A #{Faker::Dessert.variety} feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory",
    price_per_night: rand(1..75),
    number_of_guests: rand(1..5)
  )
end
