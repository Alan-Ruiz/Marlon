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

  def casting_params
    params.require(:casting).permit(:title, :content, :city, :photo)
  end

end
