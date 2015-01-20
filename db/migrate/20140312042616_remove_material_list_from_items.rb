class RemoveMaterialListFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :material_list
  end
end
