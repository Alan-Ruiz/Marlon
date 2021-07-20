class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def dashboard
    @user = User.find(params[:id])
  end

  def home
  end
end
