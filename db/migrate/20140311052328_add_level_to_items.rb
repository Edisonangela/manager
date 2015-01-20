class AddLevelToItems < ActiveRecord::Migration
  def change
    add_column :items, :level, :integer, default: 0

    add_index :items, :level
  end
end
