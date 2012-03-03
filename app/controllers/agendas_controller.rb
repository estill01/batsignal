class AgendasController < ApplicationController
  before_filter :require_login, :except => [:all, :index, :show]
  before_filter :find_agenda, :except => [:index, :new, :edit, :create, :fork]

  def all   # TODO: fix and fix the view
    @users = User.find(:all)
    @agendas = @users.each do |user|
      user.agendas.find(:all) 
    end
  end

  def index
    @user = User.find(params[:id])
    @agendas = @user.agendas.find(:all)
  end

  def show
#    check_visibility   // add in privacy control at next dev pass
    @user = User.find(params[:user_id])
    @agenda = @user.agendas.find(params[:id])
    
    unless @agenda.root == nil
      @root = User.find(@agenda.root.user_id)
    end
    unless @agenda.parent == nil
      @parent = User.find(@agenda.parent.user_id)
    end
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
      flash.now[:notice] = "Agenda added"
      redirect_to user_path(@user)
    else
      flash.now[:error] = "Error adding agenda"
      render 'new'
    end
  end

  def edit
    @user = current_user
    @agenda = @user.agendas.find(params[:id])
  end

  def update
    @user = current_user
    @agenda = @user.agendas.find(params[:id])

    if @agenda.update_attributes(params[:agenda])
      redirect_to user_agenda_path(@user, @agenda)
      flash[:notice] = "Successfully updated Agenda."
    else
      render 'edit'
      flash.now[:error] = "Failed to update Agenda."
    end
  end
  
  def destroy
    @user = current_user
    @agenda = @user.agendas.find(params[:id])

    if @agenda.destroy
      redirect_to user_path(@user)
      flash.now[:notice] = "Agenda deleted."
    else
      redirect_back_or_to user_path(@user)
      flash.now[:error] = "Was unable to delete Agenda."
    end
  end

  def sort
    params[:agenda].each_with_index do |id, index|
      Agenda.update_all({position: index+1}, {id: id})
    end
    render nothing: true
  end

  def fork
    @user = User.find(params[:user_id])
    @agenda = @user.agendas.find(params[:id])

    @forker = current_user
    @fork = @agenda.dup
    @fork.user_id = @forker.id
    
    if @fork.save
      @agenda.add_child @fork
      redirect_to user_agenda_path(@user, @agenda), :notice => "Agenda forked."
    else
      render 'show'
      flash.now[:error] = "Failed to fork Agenda."
    end
  end
  
  private
    def find_agenda
      Agenda.find(params[:id])
      if request.path != user_agenda_path(@user, @agenda)
        redirect_to user_agenda_path(@user, @agenda), :status => :moved_permanently
      end
    end
end
