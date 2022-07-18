require 'rails_helper'

RSpec.describe 'Recipe Show Page' do
  context 'user story 2' do
    it 'shows all ingredients connected to recipe + total cost' do
      burrito = Recipe.create!(name: "Breakfast Bean Burrito", complexity: 3, genre: "Mexican")
      omelet = Recipe.create!(name: "Cheese Omelet", complexity: 2, genre: "American")

      bean = Ingredient.create!(name: "Beans", cost: 5)
      egg = Ingredient.create!(name: "Eggs", cost: 7)
      cheese = Ingredient.create!(name: "Cheese", cost: 2)
      wraps = Ingredient.create!(name: "Burrito Wraps", cost: 6)

      rec_ing1 = RecipeIngredient.create!(recipe_id: burrito.id, ingredient_id: bean.id)
      rec_ing2 = RecipeIngredient.create!(recipe_id: omelet.id, ingredient_id: egg.id)
      rec_ing3 = RecipeIngredient.create!(recipe_id: burrito.id, ingredient_id: cheese.id)
      rec_ing4 = RecipeIngredient.create!(recipe_id: omelet.id, ingredient_id: cheese.id)
      rec_ing5 = RecipeIngredient.create!(recipe_id: burrito.id, ingredient_id: wraps.id)

      visit "recipes/#{burrito.id}"
      
      expect(page).to have_content("Breakfast Bean Burrito")
      expect(page).to have_content("Beans")
      expect(page).to have_content("Breakfast Bean Burrito")
      expect(page).to_not have_content("Eggs")
      expect(page).to have_content("Total Cost: 13")
    end
  end
end