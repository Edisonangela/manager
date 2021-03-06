class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string  :contact_name
      t.string  :contact_phone
      t.text    :body

      t.timestamps
    end

    add_index :addresses, :user_id
  end
end
