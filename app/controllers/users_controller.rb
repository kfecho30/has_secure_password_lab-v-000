class UsersController < ApplicationController
  def new
  end

  def create
    user = User.find_or_create_by(name: params[:user][:name])
    user.save
    binding.pry
    redirect_to '/users/new'
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
