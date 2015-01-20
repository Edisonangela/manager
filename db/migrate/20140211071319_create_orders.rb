class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.decimal :amount, precision: 10, scale: 2
      t.integer :items_count, default: 0

      t.string :contact_name
      t.string :contact_phone
      t.string :address
      t.string :body

      t.timestamps
    end

    add_index :orders, :user_id
    add_index :orders, :contact_phone
  end
end
