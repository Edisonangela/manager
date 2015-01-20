class CreateCollectiions < ActiveRecord::Migration
  def change
    create_table :collectiions do |t|
      t.belongs_to :user
      t.integer :target_id
      t.string :target_type
      t.timestamps
    end
    add_index :collectiions, :user_id
    add_index :collectiions, [:target_id, :target_type]
  end
end
