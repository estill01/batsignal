module ApplicationHelper

  def list_agenda(user, agenda)
    link = link_to(agenda.name, user_agenda_path(user, agenda))
    txt = truncate(agenda.description, :length => 100)
    return link + " " + txt
  end
end
