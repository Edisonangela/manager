class AddSortToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :sort, :integer, default: 0
  end
end
