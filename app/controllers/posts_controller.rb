class PostsController < ApplicationController

  #index
  def index
    @posts = Post.all
  end

end
