class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    # don't need anything in here, cause we're not setting up a
    # blank model to couple with the form
  end

  def create
    # no strong params cause there is no mass assignment
    @user = User.find_by(username: params[:username])
    if !@user.nil?
      if @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to @user
      else
        flash[:error] = "Incorrect Password"
        redirect_to login_path
      end
    else
        flash[:error] = "Incorrect username"
        render :new
    end
  end

  def destroy
    session.delete(:user_id) # or session[:user_id] = nil
    redirect_to root_path
  end
end
