class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :target_id
      t.string :target_type
      t.text :content
      t.timestamps
    end
    add_index :comments, [:target_id, :target_type]
  end
end
