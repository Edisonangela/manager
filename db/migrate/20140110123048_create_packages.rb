class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.text :description
      t.integer :items_count, default: 0
      t.timestamps
    end
  end
end
