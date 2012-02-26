class AgentsController < ApplicationController
  def new
    @user = current_user
    @agent = @user.agent.new
  end 

  def create
    @user = current_user
    @agent = @user.agent.new(params[:agent])

  end

  def edit
  end
  
  def update
  end

  def destroy
  end
end
