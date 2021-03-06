# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
20.times do
Item.create!(
    title: Faker::Creature::Cat.name,
    description: Faker::Hipster.sentence,
    price: rand(10..50),
    image_url: Faker::Avatar.image,
)
end