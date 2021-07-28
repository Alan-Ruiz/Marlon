class PostsController < ApplicationController

  def index
    @posts = Post.All
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def set_casting
    @casting = Casting.find(params[:id])
  end


end
