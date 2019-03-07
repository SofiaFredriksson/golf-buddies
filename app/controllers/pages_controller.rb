class PagesController < ApplicationController
  def home
    @clubs = Club.all
    @users = User.all
  end
end
