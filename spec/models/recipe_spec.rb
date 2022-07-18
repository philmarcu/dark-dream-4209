require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :complexity}
    it {should validate_presence_of :genre}
  end

  describe 'relationships' do
    it {should have_many :recipe_ingredients}
    it {should have_many(:ingredients).through(:recipe_ingredients)}
  end

  describe 'instance methods' do
    it 'gets total sum of ingredients cost' do
      burrito = Recipe.create!(name: "Breakfast Bean Burrito", complexity: 3, genre: "Mexican")
      omelet = Recipe.create!(name: "Cheese Omelet", complexity: 2, genre: "American")

      bean = Ingredient.create!(name: "Beans", cost: 5)
      egg = Ingredient.create!(name: "Eggs", cost: 7)
      cheese = Ingredient.create!(name: "Cheese", cost: 2)
      potato = Ingredient.create!(name: "Diced Potatoes", cost: 8)

      rec_ing1 = RecipeIngredient.create!(recipe_id: burrito.id, ingredient_id: bean.id)
      rec_ing2 = RecipeIngredient.create!(recipe_id: omelet.id, ingredient_id: egg.id)
      rec_ing3 = RecipeIngredient.create!(recipe_id: burrito.id, ingredient_id: cheese.id)
      rec_ing3 = RecipeIngredient.create!(recipe_id: omelet.id, ingredient_id: cheese.id)
      rec_ing3 = RecipeIngredient.create!(recipe_id: burrito.id, ingredient_id: potato.id)

      expect(burrito.total_cost).to eq(15)
      expect(omelet.total_cost).to eq(9)
    end
  end
end
