class DropAlliesTable < ActiveRecord::Migration
  def up
    drop_table :allies
  end

  def down
    create_table :allies
  end
end
