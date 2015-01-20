class AddIsAdminToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :is_admin, :boolean, default: false

    add_index :admin_users, :is_admin
  end
end
