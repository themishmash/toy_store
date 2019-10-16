# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..20
  Toy.create(
    name: Faker::Superhero.power,
    description: Faker::Lorem.sentence,
    date_posted: Faker::Date.between( from: 200.days.ago, to: Date.today ),
    user: Faker::FunnyName.name
  )
  puts "Created #{i} records"
end 
