class DropLiabilitiesTable < ActiveRecord::Migration
  def up
    drop_table :liabilities
  end

  def down
    create_table :liabilities
  end
end
