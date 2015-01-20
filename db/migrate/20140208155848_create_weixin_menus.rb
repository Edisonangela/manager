class CreateWeixinMenus < ActiveRecord::Migration
  def change
    create_table :weixin_menus do |t|
      t.integer :menu_type
      t.string :name
      t.string :key
      t.string :url
      t.integer :weixin_sub_menus_count, default: 0
    end
  end
end
