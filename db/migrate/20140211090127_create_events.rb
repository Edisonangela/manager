class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :shop_id
      t.string  :title
      t.text    :body
      t.string  :banner

      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end

    add_index :events, :shop_id
  end
end
