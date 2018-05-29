class UsersController < ApplicationController
  def new
  end

  def create
    user = User.find_or_create_by(:name => params[:name])
  end
end
