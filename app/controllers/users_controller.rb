class UsersController < ApplicationController
  before_filter :find_user, :except => [:index, :new, :edit, :create]

  def index
    @users = User.find(:all)
  end
  
  def show
    @user = User.find(params[:id])
    @agendas = @user.agendas.order("position")
    @follows = @user.all_follows
    if @user == current_user
      @agenda = current_user.agendas.new
    end
  end

  def new
    if logged_in?
      redirect_to user_path(current_user)
    else
      @user = User.new
    end
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
    require_login
    @user = current_user
  end

  def update
    require_login
    @user = current_user

    if @user.update_attributes(params[:user])
      redirect_to user_path(@user), :notice => "Updates saved."
    else
      render 'edit'
      flash.now[:error] = "Unable to save changes."
    end
  end

  def destroy
    require_login
    @user = current_user
    @user.destroy
    logout
    redirect_to root_url, :notice => "Account deleted."
  end

  private
    def find_user
      User.find(params[:id])
      if request.path != user_path(@user)
        redirect_to @user, :status => :moved_permanently
      end
    end
end
