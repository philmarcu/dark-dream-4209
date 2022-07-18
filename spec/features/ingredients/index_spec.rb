require 'rails_helper'

RSpec.describe 'Ingredients Index Page' do
  describe 'user story 3' do
    context 'it lists ingredients' do
      it 'links to a ingredient index page' do
        burrito = Recipe.create!(name: "Breakfast Bean Burrito", complexity: 3, genre: "Mexican")
        omelet = Recipe.create!(name: "Cheese Omelet", complexity: 2, genre: "American")

        bean = Ingredient.create!(name: "Beans", cost: 5)
        egg = Ingredient.create!(name: "Eggs", cost: 7)
        cheese = Ingredient.create!(name: "Cheese", cost: 2)

        rec_ing1 = RecipeIngredient.create!(recipe_id: burrito.id, ingredient_id: bean.id)
        rec_ing2 = RecipeIngredient.create!(recipe_id: omelet.id, ingredient_id: egg.id)
        rec_ing3 = RecipeIngredient.create!(recipe_id: burrito.id, ingredient_id: cheese.id)
        rec_ing3 = RecipeIngredient.create!(recipe_id: omelet.id, ingredient_id: cheese.id)

        visit "/ingredients"
        
        within "#recipe-#{bean.id}" do
          expect(page).to have_content("Beans")
          expect(page).to have_content("Cost: 5")
          expect(page).to_not have_content("Eggs")
          expect(page).to have_content("Used In 1 Total Recipes")
        end 
        
        within "#recipe-#{egg.id}" do
          expect(page).to have_content("Eggs")
          expect(page).to have_content("Cost: 7")
          expect(page).to_not have_content("Beans")
        end

        within "#recipe-#{cheese.id}" do
          expect(page).to have_content("Cheese")
          expect(page).to have_content("Cost: 2")
          expect(page).to_not have_content("Beans")
          expect(page).to_not have_content("Eggs")
          expect(page).to have_content("Used In 2 Total Recipes")
        end
      end
    end


  end
end