class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username,         :nil => false
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.integer :phone_number
      t.string :email
      t.string :crypted_password, :default => nil
      t.string :salt,             :default => nil

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
