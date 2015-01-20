class AddFansCountToItemsAndShops < ActiveRecord::Migration
  def change
    add_column :items, :fans_count, :integer, default: 0
    add_column :shops, :fans_count, :integer, default: 0

    add_index :items, :fans_count
    add_index :shops, :fans_count
  end
end
