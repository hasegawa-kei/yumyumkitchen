class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @recipes = Recipe.where(user_id: params[:id]).page(params[:page]).per(6)
    @likes = Like.where(user_id: @user.id).page(params[:page]).per(6)
  end


end
