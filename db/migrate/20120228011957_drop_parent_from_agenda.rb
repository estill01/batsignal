class DropParentFromAgenda < ActiveRecord::Migration
  def up
    remove_column :agendas, :parent
  end

  def down
    add_column :agendas, :parent, :integer
  end
end
