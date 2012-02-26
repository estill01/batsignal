class AddPositionToAgendas < ActiveRecord::Migration
  def change
    add_column :agendas, :position, :integer
  end
end
