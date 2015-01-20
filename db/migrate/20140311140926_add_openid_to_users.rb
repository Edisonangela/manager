class AddOpenidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :openid, :string

    add_index :users, :openid
  end
end
