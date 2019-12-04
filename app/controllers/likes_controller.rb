class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @like = current_user.likes.new(recipe_id: params[:recipe_id])
    if @like.save
      flash[:notice] = "いいねしました。"
      redirect_to recipes_url
    end
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, recipe_id: params[:recipe_id])
    if @like.destroy
      flash[:notice] = "いいねを取り消しました。"
      redirect_to recipes_url
    end
  end

end
