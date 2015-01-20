class AddPositionToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :position, :integer, default: 0
    remove_column :photos, :sort
  end
end
