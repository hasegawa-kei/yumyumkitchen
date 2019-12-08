class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to "/recipes/#{@recipe.id}"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      render 'js_comment.js.erb'
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:content, :recipe_id, :user_id)
    end

end
