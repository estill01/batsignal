class UsersController < ApplicationController
  def index
  end
  
  def show
    @user = User.find(params[:id])
    @agendas = @user.agendas
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])

    if @user.save
      auto_login(@user)
      redirect_back_or_to user_path(@user), :notice => "Welcome to Agendo."
    else
      render 'new'
      flash.now[:error] = "There was an error creating your account."
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user

    if @user.update_attributes(params[:user])
      redirect_to user_path(@user), :notice => "Updates saved."
    else
      render 'edit'
      flash.now[:error] = "Unable to save changes."
    end
  end

  def destroy
    @user = current_user
    @user.destroy
    logout
    redirect_to root_url, :notice => "Account deleted."
  end
end
