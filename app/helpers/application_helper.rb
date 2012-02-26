module ApplicationHelper

  def list_agenda(user, agenda)
    
    link_to(agenda.name, user_agenda_path(user, agenda))
    truncate(agenda.description, :length => 100)
  end
end
