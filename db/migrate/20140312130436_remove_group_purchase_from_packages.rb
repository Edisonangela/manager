class RemoveGroupPurchaseFromPackages < ActiveRecord::Migration
  def change
    remove_column :packages, :group_purchase

    add_column :packages, :price, :decimal, precision: 20, scale: 2, default: 0
  end
end
