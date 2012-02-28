class DropEmbeddedForkFieldsFromAgenda < ActiveRecord::Migration
  def up
    remove_column :agendas, :original_user_id
    remove_column :agendas, :forked_from_user_id
    remove_column :agendas, :forked_at_time
    remove_column :agendas, :forked_from_agenda_id
    remove_column :agendas, :original_agenda_id
  end

  def down
    add_column :agendas, :original_user_id, :integer
    add_column :agendas, :forked_from_user_id, :integer
    add_column :agendas, :forked_at_time, :datetime
    add_column :agendas, :forked_from_agenda_id, :integer
    add_column :agendas, :original_agenda_id, :integer
  end
end
