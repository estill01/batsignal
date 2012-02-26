class AddAgendaIdToFollows < ActiveRecord::Migration
  def change
    add_column :follows, :agenda_id, :integer
  end
end
