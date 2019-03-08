class PagesController < ApplicationController
  skip_before_action :authorized, only: [:home]
  def home
    current_user 
    @users = User.all
  end
end
