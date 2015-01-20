class DropCollectiions < ActiveRecord::Migration
  def change
    drop_table :collectiions
  end
end
