class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def buddies
    @user = User.find(params[:id])
  end
end
