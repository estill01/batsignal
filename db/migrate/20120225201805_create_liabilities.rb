class CreateLiabilities < ActiveRecord::Migration
  def change
    create_table :liabilities do |t|
      t.integer :user_id
      t.integer :agenda_id

      t.timestamps
    end
  end
end
