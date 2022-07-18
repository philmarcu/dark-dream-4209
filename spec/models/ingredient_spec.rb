require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :cost}
  end

  describe 'relationships' do
    it {should have_many :recipe_ingredients}
    it {should have_many(:recipes).through(:recipe_ingredients)}
  end

  describe 'instance methods' do
    it 'returns the recipe count' do
      burrito = Recipe.create!(name: "Breakfast Bean Burrito", complexity: 3, genre: "Mexican")
      omelet = Recipe.create!(name: "Cheese Omelet", complexity: 2, genre: "American")
      
      cheese = Ingredient.create!(name: "Cheese", cost: 2)

      rec_ing1 = RecipeIngredient.create!(recipe_id: burrito.id, ingredient_id: cheese.id)
      rec_ing2 = RecipeIngredient.create!(recipe_id: omelet.id, ingredient_id: cheese.id)


      expect(cheese.rec_count).to eq(2)
    end
  end
end
