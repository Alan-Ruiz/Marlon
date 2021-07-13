class CastingsController < ApplicationController
  before_action :set_casting, only: [:show]

  def index
    @castings = Casting.All
  end

  def show
  end

  def new
    @casting = Casting.new
  end

  def create
    @casting = Casting.new(casting_params)
    if @casting.save
      redirect_to castings_path
    else
      render :new
    end
  end

  private

  def set_casting
    @casting = Casting.find(params[:id])
  end

  def casting_params
    params.require(:casting).permit(:title, :content, :city, :photo)
  end
end
