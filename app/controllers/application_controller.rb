class ApplicationController < ActionController::Base
  before_action :authorized 

  helper_method :logged_in?, :current_user, :authorized

  def current_user
    if @current_user.nil?
      @current_user = User.find_by(id: session[:user_id])
    else
      @current_user
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to login_path unless logged_in?
  end


end
