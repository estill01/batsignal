class CreateAllies < ActiveRecord::Migration
  def change
    create_table :allies do |t|
      t.integer :user_id
      t.integer :agenda_id
      t.timestamps
    end
  end
end
