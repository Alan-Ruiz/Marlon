class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_user, only: :dashboard

  def dashboard
  end

  def home
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
