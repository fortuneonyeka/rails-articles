class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end


  def comment_params
    params.require(:comment).permit(:commenter, :body, :status)
  end
end
