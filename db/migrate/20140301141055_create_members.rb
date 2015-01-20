class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :openid
      t.string :phone
      t.integer :orders_count

      t.timestamps
    end
  end
end
