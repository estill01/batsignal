class DropAgentsTable < ActiveRecord::Migration
  def up
    drop_table :agents
  end

  def down
    create_table :agents do |t|
      t.integer :user_id
      t.integer :agent_id
      t.integer :agenda_id
      t.timestamps
    end
  end
end
