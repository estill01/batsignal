class DropAgendasSlugIndex < ActiveRecord::Migration 
  def up
    remove_index :agendas, :name => "index_agendas_on_slug"
  end

  def down
    add_index :agendas, :slug, :name => "index_agendas_on_slug", :unique => true
  end
end
