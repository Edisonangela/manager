class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :target_id
      t.string :target_type
      t.string :image
      t.timestamps
    end
    add_index :photos, [:target_id, :target_type]
  end
end
