class ChangeAgentTypeDefault < ActiveRecord::Migration
  def up
    remove_column :agents, :type
    add_column :agents, :type, :string, :default => "human"
  end

  def down
    remove_column :agents, :type
    add_column :agents, :type, :string, :default => "ally"
  end
end
