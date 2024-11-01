class CommentsController < ApplicationController
  # used a rails migrate to create coulmn :post_id in comments table
  def create
    # finding the post by the id
    @post = Post.find(params[:post_id])
    # creating a new comment
    @comment = @post.comments.create(params[:comment].permit(:name, :comment))
    # redirecting to the post
    redirect_to post_path(@post)
  end

  def destroy
    # finding the post by the id
    @post = Post.find(params[:post_id])
    # finding the comment by the id
    @comment = @post.comments.find(params[:id])
    # deleting the comment
    @comment.destroy
    # redirecting to the post
    redirect_to post_path(@post)
  end
end
