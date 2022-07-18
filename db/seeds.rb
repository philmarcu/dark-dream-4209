# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
burrito = Recipe.create!(name: "Breakfast Bean Burrito", complexity: 3, genre: "Mexican")
omelet = Recipe.create!(name: "Cheese Omelet", complexity: 2, genre: "American")
bacon = Recipe.create!(name: "Bacon Pancake", complexity: 4, genre: "American")
pho = Recipe.create!(name: "Bun Bo Hue", complexity: 8, genre: "Vietnamese")
tuna = Recipe.create!(name: "Tuna Roll", complexity: 7, genre: "Japanese")
pizza = Recipe.create!(name: "Sausage & Pepperoni Pizza", complexity: 5, genre: "American")