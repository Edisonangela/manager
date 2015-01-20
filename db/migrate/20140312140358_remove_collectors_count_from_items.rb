class RemoveCollectorsCountFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :collectors_count
  end
end
