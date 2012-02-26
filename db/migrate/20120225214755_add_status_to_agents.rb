class AddStatusToAgents < ActiveRecord::Migration
  def change
    add_column :agents, :status, :string, :default => "ally"
  end
end
