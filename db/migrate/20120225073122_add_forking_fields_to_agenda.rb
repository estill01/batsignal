class AddForkingFieldsToAgenda < ActiveRecord::Migration
  def change
    add_column :agendas, :created_by_user_id, :integer
    add_column :agendas, :forked_from_user_id, :integer
    add_column :agendas, :forked_at, :timestamp
  end
end
