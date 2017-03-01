class PostsController < ApplicationController

  #index
  def index
    @posts = Post.all
    @communities = Community.all
  end

  #show
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  #edit
  def edit
    @post = Post.find(params[:id])
    if @post.user == current_user
    else
      redirect_to post_path(@post)
      flash[:alert] = "Only the author of the post can edit it!"
    end
  end

  #update
  def update
    @post = Post.find(params[:id])
    @post.update(post_params.merge(user:current_user))
    redirect_to post_path(@post)
  end

  #new
  def new
    @post = Post.new
  end

  #create
  def create
    @post = Post.create!(post_params.merge(user: current_user))
    redirect_to post_path(@post)
  end

  #destroy
  def destroy
    @post = Post.find(params[:id])
    if @post.user == current_user
      @post.destroy
    else
      flash[:alert] = "Only the author of the post can delete"
    end
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :image)
  end

end
