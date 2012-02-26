module AgendasHelper

  def fork_agenda
    @user = User.find(params[:user_id])
    @agenda = @user.agendas.find(params[:id])
    
    @fork = @agenda.dup

    @fork.user_id = current_user.id
    @fork.forked_from_user_id = @user.id
    @fork.forked_at = local_to_utc(Time.now)
    @fork.forked_from_agenda_id = @agenda.id
    @fork.original_agenda_id = @agenda.original_agenda_id

    if @fork.save
      flash.now[:notice] = "Agenda forked."
    else
      flash.now[:error] = "Failed to fork agenda."
    end
  end
end
