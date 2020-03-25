# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.build(comment_params)
    @comment.user_id = current_user.id
    render :comment if @comment.save
  end

  def destroy
    @comment = Comment.find(params[:id])
    render :comment if @comment.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :recipe_id, :user_id)
  end
end
