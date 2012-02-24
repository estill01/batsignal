class SessionsController < ApplicationController
  def new
    unless logged_in?
      @user = User.new
    else
      redirect_to user_path(current_user)
    end
  end

  def create
    if @user = login(params[:username], params[:password]) 
      redirect_to user_path(@user), :notice => "Welcome back to Agendo."
    else
      redirect_to login_path
      flash[:error] = "Error logging in."
    end
  end

  def destroy
    if logged_in?
      logout
      redirect_to login_path, :notice => "Logged out"
    else
      redirect_to login_path
    end
  end
end
