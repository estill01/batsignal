class AddIndexToAgendasOnSlug < ActiveRecord::Migration
  def change
    add_index :agendas, :slug, :name => "index_agendas_on_slug"
  end
end
