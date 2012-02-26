class AddSlugToAgendas < ActiveRecord::Migration
  def change
    add_column :agendas, :slug, :string
    add_index :agendas, :slug, unique: true
  end
end
