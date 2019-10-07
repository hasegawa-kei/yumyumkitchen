class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end

  def create
    Recipe.create(recipe_params)
    binding.pry
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :title, :body)
  end
end
