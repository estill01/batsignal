class AgendasController < ApplicationController
  require_login :except => [:index, :show]

  def index
    
  end

  def show
#    check_visibility   // don't show private agendas TODO
    @user = User.find(params[:user_id])
    @agenda = @user.agendas.find(params[:id])
  end

  def new
    @user = current_user
    @agenda = @user.agendas.new
    @agendas = @user.agendas
  end

  def create
    @user = current_user
    @agenda = @user.agendas.new(params[:agenda])

    if @agenda.save
      render 'new'
      flash.now[:notice] = "Agenda added"
    else
      render 'new'
      flash.now[:error] = "Error adding agenda"
    end
  end

  def edit
  end

  def update
  end
  
  def destroy
  end
end
