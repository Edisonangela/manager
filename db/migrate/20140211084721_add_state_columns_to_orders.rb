class AddStateColumnsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :state, :string
    add_column :orders, :code, :string
    add_column :orders, :delivered_at, :datetime
    add_column :orders, :confirmed_at, :datetime
  end
end
