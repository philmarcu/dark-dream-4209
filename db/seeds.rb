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

bean = Ingredient.create!(name: "Beans", cost: 5)
egg = Ingredient.create!(name: "Eggs", cost: 7)
bacon = Ingredient.create!(name: "Bacon", cost: 12)
flour = Ingredient.create!(name: "Flour", cost: 4)
broth = Ingredient.create!(name: "Beef Broth", cost: 8)
noodle = Ingredient.create!(name: "Rice Noodles", cost: 3)
beaf = Ingredient.create!(name: "Beef Brisket", cost: 14)
sausage = Ingredient.create!(name: "Sausages", cost: 13)
cheese = Ingredient.create!(name: "Cheese", cost: 2)
wraps = Ingredient.create!(name: "Burrito Wraps", cost: 6)