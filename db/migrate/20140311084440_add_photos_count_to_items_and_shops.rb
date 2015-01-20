class AddPhotosCountToItemsAndShops < ActiveRecord::Migration
  def change
    add_column :items, :photos_count, :integer, default: 0
    add_column :shops, :photos_count, :integer, default: 0
  end
end
