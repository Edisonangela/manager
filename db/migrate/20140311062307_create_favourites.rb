class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.integer :user_id
      t.integer :target_id
      t.string  :target_type

      t.timestamps
    end

    add_index :favourites, :user_id
    add_index :favourites, [ :target_id, :target_type ]
  end
end
