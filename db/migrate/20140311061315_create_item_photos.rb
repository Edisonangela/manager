class CreateItemPhotos < ActiveRecord::Migration
  def change
    create_table :item_photos do |t|
      t.integer :item_id
      t.string  :data
      t.integer :position, default: 1

      t.timestamps
    end

    add_index :item_photos, :item_id
    add_index :item_photos, :position
  end
end
