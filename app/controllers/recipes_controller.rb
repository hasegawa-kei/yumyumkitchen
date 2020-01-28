class RecipesController < ApplicationController
  before_action :set_target_recipe, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]
  PER = 9


  def new
    @recipe = Recipe.new
    @procedure = @recipe.procedures.build
    @material = @recipe.materials.build
  end

  def create
    @recipe = current_user.recipes.build(recipe_params)
    if @recipe.save
      flash[:notice] = "「#{@recipe.title}」を作成しました。"
      redirect_to @recipe
    else
      flash[:recipe] = @recipe
      flash[:error_messages] = @recipe.errors.full_messages
      render 'new'
    end

  end

  def index
    @recipes = params[:tag_id].present? ? Tag.find(params[:tag_id]).recipes : Recipe.all
    @search = Recipe.ransack(params[:q])
    @recipes = @search.result.page(params[:page]).per(PER)

    @like = Like.new
    @like_count = Like.where(recipe_id: params[:recipe_id]).count
  end

  def show
    @comment = Comment.new
    @comments = @recipe.comments
    @like = Like.new
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      flash[:notice] = "「#{@recipe.title}」を編集しました。"
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
    params.require(:recipe).permit(:title, :picture, :serving, :body, tag_ids: [],
        procedures_attributes: [:id, :recipe_id, :image, :image_cache, :content, :_destroy],
        materials_attributes: [:id, :recipe_id, :name, :quantity, :_destroy]
      )
  end

  def set_target_recipe
    @recipe = Recipe.find(params[:id])
  end



end
