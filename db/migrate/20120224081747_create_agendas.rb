class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.integer :user_id
      t.string :name
      t.boolean :private, :default => false

      t.timestamps
    end
  end
end
