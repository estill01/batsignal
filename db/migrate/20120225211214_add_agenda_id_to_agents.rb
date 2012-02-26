class AddAgendaIdToAgents < ActiveRecord::Migration
  def change
    add_column :agents, :agenda_id, :integer
  end
end
