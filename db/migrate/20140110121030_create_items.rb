class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.belongs_to :category
      t.string :cover
      t.text :description
      t.integer :comments_count, default: 0
      t.decimal :price, precision: 20, scale: 2
      t.boolean :is_recommended, default: false
      t.timestamps
    end
  end
end
