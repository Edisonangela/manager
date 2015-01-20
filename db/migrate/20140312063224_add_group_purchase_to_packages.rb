class AddGroupPurchaseToPackages < ActiveRecord::Migration
  def change
    add_column :packages, :group_purchase, :decimal, precision: 20, scale: 2
  end
end
