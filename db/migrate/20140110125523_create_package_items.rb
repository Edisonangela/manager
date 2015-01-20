class CreatePackageItems < ActiveRecord::Migration
  def change
    create_table :package_items do |t|
      t.integer :package_id
      t.integer :item_id
      t.integer :position, default: 0
      t.timestamps
    end
  end
end
