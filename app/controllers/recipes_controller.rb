class RecipesController < ApplicationController
  before_action :set_target_recipe, only: %i[show edit update destroy]

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.create(recipe_params)
    if recipe.save
      flash[:notice] = "「#{recipe.title}」を作成しました。"
      redirect_to recipe
    else
      flash[:recipe] = recipe
      flash[:error_messages] = recipe.errors.full_messages
      redirect_back(fallback_location: recipe)
    end

  end

  def index
    @recipes = params[:tag_id].present? ? Tag.find(params[:tag_id]).recipes : Recipe.all
    @recipes = @recipes.page(params[:page])
  end

  def show
    @comment = Comment.new(recipe_id: @recipe.id)
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      flash[:recipe] = @recipe
      flash[:error_messages] = @recipe.errors.full_messages
      redirect_back(fallback_location: @recipe)
    end
  end

  def destroy
    @recipe.destroy

    redirect_to recipes_path, flash: { notice: "「#{@recipe.title}」が削除されました。"}
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :picture, :body, tag_ids: [])
  end

  def set_target_recipe
    @recipe = Recipe.find(params[:id])
  end
end
