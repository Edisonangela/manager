class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :item_id

      t.integer :number, default: 1
      t.decimal :amount, precision: 10, scale: 2

      t.timestamps
    end

    add_index :order_items, :order_id
    add_index :order_items, :item_id
  end
end
