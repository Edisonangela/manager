class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :logo
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
