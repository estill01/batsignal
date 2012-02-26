class AddAgentIdToAgents < ActiveRecord::Migration
  def change
    add_column :agents, :agent_id, :integer
  end
end
