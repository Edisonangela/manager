class CreateShopPhotos < ActiveRecord::Migration
  def change
    create_table :shop_photos do |t|
      t.integer :shop_id
      t.string  :data
      t.integer :position, default: 1

      t.timestamps
    end

    add_index :shop_photos, :shop_id
    add_index :shop_photos, :position
  end
end
