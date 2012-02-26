class SimplifyAgentModel < ActiveRecord::Migration
  def up
    remove_column :agents, :status
    remove_column :agents, :type
  end

  def down
    add_column :agents, :status, :string, :default => "ally"
    add_column :agents, :type, :string, :default => "human"
  end
end
