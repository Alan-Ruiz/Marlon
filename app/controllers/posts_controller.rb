class PostsController < ApplicationController

  def index
    @posts = Post.All
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
