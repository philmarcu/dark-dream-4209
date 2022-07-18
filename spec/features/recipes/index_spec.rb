require 'rails_helper'

RSpec.describe 'Recipe Index Page' do
  describe 'user story 1' do
    context 'it lists recipes' do
      it 'links to a recipe page' do
        burrito = Recipe.create!(name: "Breakfast Bean Burrito", complexity: 3, genre: "Mexican")
        omelet = Recipe.create!(name: "Cheese Omelet", complexity: 2, genre: "American")
        
        visit "/recipes"
                
        within "#recipe-#{burrito.id}" do
          expect(page).to have_content("Breakfast Bean Burrito")
          expect(page).to have_content("Mexican")
        end 
        
        within "#recipe-#{omelet.id}" do
          expect(page).to have_content("Cheese Omelet")
          expect(page).to have_content("American")
        end
      end
    end


  end
end