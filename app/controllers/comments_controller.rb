class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.build(comment_params)
    @comment.user_id = current_user.id
    respond_to do |format|
      if @comment.save
        format.html {redirect_to @recipe, notice: "コメントを投稿しました！"}
        format.js
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      render :create
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:content, :recipe_id, :user_id)
    end

end
