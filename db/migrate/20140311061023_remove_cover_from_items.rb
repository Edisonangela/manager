class RemoveCoverFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :cover
  end
end
