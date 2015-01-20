class AddMaterialListToItems < ActiveRecord::Migration
  def change
    add_column :items, :material_list, :string
  end
end
