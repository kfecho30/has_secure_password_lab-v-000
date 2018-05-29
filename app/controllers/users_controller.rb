class UsersController < ApplicationController
  def new
  end

  def create
    user = User.find_or_create_by(:name => params[:name])
    redirect_to '/users/welcome'
  end

  def welcome
  end
end
