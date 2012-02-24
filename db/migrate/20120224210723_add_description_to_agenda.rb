class AddDescriptionToAgenda < ActiveRecord::Migration
  def change
    add_column :agendas, :description, :text
  end
end
