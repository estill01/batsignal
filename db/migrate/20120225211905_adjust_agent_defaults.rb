class AdjustAgentDefaults < ActiveRecord::Migration
  def up
    remove_column :agents, :type
    add_column :agents, :type, :string, :default => "ally"
  end

  def down
    remove_column :agents, :type, :string, :default => "ally"
    add_column :agents, :type, :default => 0
  end
end
