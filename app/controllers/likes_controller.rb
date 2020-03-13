# frozen_string_literal: true

class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_recipe, only: %i[create destroy]

  def create
    @like = current_user.likes.build(recipe_id: params[:recipe_id])
    @like.save
  end

  def destroy
    @like = Like.find_by(recipe_id: params[:recipe_id], user_id: current_user.id)
    @like.destroy
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
