class FollowsController < ApplicationController
  def create
    @user = User.find(params[:id])
    if current_user.follow @user
      redirect_to :back, :notice => "Added #{@user.username} to call list."
    else
      flash.now[:error] = "Error adding #{@user.username} to call list."
    end
  end

  def destroy
    @user = User.find(params[:id])
    if current_user.unfollow @user
      redirect_to :back, :notice => "Removed #{@user.username} from call list."
    else
      flash.now[:error] = "Error removing #{@user.username} from call list."
    end
  end
end
