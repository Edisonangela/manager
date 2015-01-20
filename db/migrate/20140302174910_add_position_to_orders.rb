class AddPositionToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :position, :integer
    add_index :orders, :position
  end
end
