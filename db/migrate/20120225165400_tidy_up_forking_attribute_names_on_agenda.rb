class TidyUpForkingAttributeNamesOnAgenda < ActiveRecord::Migration
  def up
    rename_column :agendas, :created_by_user_id, :original_user_id
  end

  def down
    rename_column :agendas, :original_user_id, :created_by_user_id
  end
end
