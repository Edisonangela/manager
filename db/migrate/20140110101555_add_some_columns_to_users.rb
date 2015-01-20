class AddSomeColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :points, :integer, default: 0
    add_column :users, :mobile_phone, :string
    remove_column :users, :phone
  end
end
