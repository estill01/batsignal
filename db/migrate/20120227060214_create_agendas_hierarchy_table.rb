class CreateAgendasHierarchyTable < ActiveRecord::Migration
  def up
    create_table :agenda_hierarchies, :id => false do |t| 
      t.integer :ancestor_id, :null => false
      t.integer :descendant_id, :null => false
      t.integer :generations, :null => false
    end
    add_index :agenda_hierarchies, [:ancestor_id, :descendant_id], :unique => true
    add_index :agenda_hierarchies, [:descendant_id]
  end

  def down
  end
end
