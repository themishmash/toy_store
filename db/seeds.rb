# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..18
  User.create(
    email: Faker::Internet.email,
    password: Faker::Alphanumeric.alphanumeric(number: 10)
  )
end 

for i in 1..18
  Manufacturer.create(
    name: Faker::Company.name,
    location: Faker::Address.city
  )
end 


for i in 1..20
  Toy.create(
    name: Faker::Superhero.power,
    description: Faker::Lorem.sentence,
    date_posted: Faker::Date.between( from: 200.days.ago, to: Date.today ),
    user_id: (1..18).to_a.sample,
    manufacturer_id: (1..18).to_a.sample
  )
  puts "Created #{i} records"
end 


