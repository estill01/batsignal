class MoreForkedFieldsForAgendas < ActiveRecord::Migration
  def up
    add_column :agendas, :forked_from_agenda_id, :integer
    add_column :agendas, :original_agenda_id, :integer
  end

  def down
    remove_column :agendas, :forked_from_agenda_id, :integer
    remove_column :agendas, :original_agenda_id, :integer
  end
end
