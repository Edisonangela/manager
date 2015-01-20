class ChangeColumnsForPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :target_id
    remove_column :photos, :position
    remove_column :photos, :image

    add_column :photos, :data, :string
  end
end
