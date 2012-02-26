class ChangeAgendaForkedTimeField < ActiveRecord::Migration
  def up
    rename_column :agendas, :forked_at, :forked_at_time
  end

  def down
    rename_column :agendas, :forked_at_time, :forked_at
  end
end
