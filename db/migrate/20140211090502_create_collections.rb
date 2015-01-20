class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.integer :target_id
      t.string :target_type

      t.integer :user_id

      t.timestamps
    end

    add_index :collections, :user_id
    add_index :collections, [ :target_id, :target_type ]

    add_column :shops, :collectors_count, :integer, default: 0
    add_column :items, :collectors_count, :integer, default: 0

    add_index :shops, :collectors_count
    add_index :items, :collectors_count
  end
end
