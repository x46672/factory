class CommentsController < ApplicationController
  def create
  comment_params = params.require(:comment).permit(:author_name, :body)
  @comment = Comment.new(comment_params)
  @comment.article_id = params[:article_id]

  @comment.save
  redirect_to article_path(@comment.article)
  end


end
