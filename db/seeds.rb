# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


restaurants = Restaurant.create([
  { name: "L'Alicheur", address: "96 Rue Saint-Maur, 75011 Paris", phone_number: 0102030405, category: "french" },
  { name: "Epicure au Bristol", address: "112 rue du Fg St-Honoré 75008 Paris", phone_number: 0102030405, category: "french" },
  { name: "La truffière", address: "4 rue Blainville 75005 Paris", phone_number: 0102030405, category: "french" },
  { name: "Le pré catelan", address: "route de Suresnes 75016 Paris", phone_number: 0102030405, category: "french" },
  { name: "L'esprit Tchai'", address: "115 Rue Oberkampf, 75011 Paris", phone_number: 0102030405, category: "french" }
  ])

25.times do
  review = Review.new(
    content: Faker::Hipster.sentence(3),
    rating: (0..5).to_a.sample,
    restaurant_id: (1..5).to_a.sample
  )
  review.save!
end

