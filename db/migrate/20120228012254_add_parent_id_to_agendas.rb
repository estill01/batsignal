class AddParentIdToAgendas < ActiveRecord::Migration
  def change
    add_column :agendas, :parent_id, :integer
  end
end
