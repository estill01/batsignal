class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.integer :user_id
      t.integer :type
      t.timestamps
    end
  end
end
