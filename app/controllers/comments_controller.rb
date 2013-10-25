class CommentsController < ApplicationController

  def create
    @comment = @commentable.comments.new(comment_params)
    if @comment.save
        flash[:notice] = "Comment is awaiting moderation"
        redirect_to @commentable, notice: "Comment is awaiting moderation"
    else
        @post = Post.find(@comment.post_id)
        render template: "posts/show"
    end
  end

private

  def comment_params
    params.require(:comment).permit(:author, :author_url, :author_email, :content, :referrer, :post_id)
  end

end
