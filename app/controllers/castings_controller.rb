class CastingsController < ApplicationController

  def index
    @castings = Casting.All
  end

  def show
    @casting = Casting.find(params[:id])
  end

  def new
  end

  def create
  end

end
