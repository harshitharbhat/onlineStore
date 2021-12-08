# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
Product.create(
  name: 'Painting',
  description: %{Exquisite painting},
  image: 'painting.jpeg',
  price: 100.00
)
Product.create(
  name: 'Basket',
  description: %{Handwoven Basket},
  image: 'painting.jpeg',
  price: 30.00
)
Product.create(
  name: 'Rustic Pot',
  description: %{Authentic handcrafted clay pot},
  image: 'painting.jpeg',
  price: 57.00
)