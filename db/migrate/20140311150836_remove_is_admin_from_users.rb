class RemoveIsAdminFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :is_admin
    remove_column :users, :avatar
  end
end
