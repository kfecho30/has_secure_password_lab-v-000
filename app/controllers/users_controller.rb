class UsersController < ApplicationController
  def new
  end

  def create
    user = User.find_or_create_by(name: params[:user][:name])
    user.save
    binding.pry
    redirect_to '/users/new'
  end

  def welcome
  end
end
