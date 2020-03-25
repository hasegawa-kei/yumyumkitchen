# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user

  def show
    @recipes = Recipe.where(user_id: params[:id]).page(params[:page]).per(6)
    @likes = Like.where(user_id: @user.id).page(params[:page]).per(6)
  end

  def follow
    current_user.follow(@user)
  end

  def unfollow
    current_user.stop_following(@user)
  end

  def follow_list
  end

  def follower_list
  end

  def set_user
    @user = User.find(params[:id])
  end
end
