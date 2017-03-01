class CommentsController < ApplicationController

  #index
  def index
    @post = Post.find(params[:post_id])
    redirect_to post_path(@post)
  end

  #new
  def new
    redirect_to post_path(@post)
    # @post = Post.find(params[:post_id])
    # @comment = Comment.new
  end

  def show
    @post = Post.find(params[:post_id])
    redirect_to post_path(@post)
  end

    #create
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params.merge(user: current_user))
    redirect_to post_path(@post)
  end

  #edit
  def edit
    @post = Post.find(params[:post_id])
    if current_user
      if current_user == @comment.user
        @comment = Comment.find(params[:id])
      else
        redirect_to post_path(@post)
      end
    else
        redirect_to post_path(@post)
    end
  end

  #update
  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params.merge(user:current_user))
    redirect_to post_path(@post)
  end

  #destroy
  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end

end
