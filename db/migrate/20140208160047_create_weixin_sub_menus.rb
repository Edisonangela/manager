class CreateWeixinSubMenus < ActiveRecord::Migration
  def change
    create_table :weixin_sub_menus do |t|
      t.integer :weixin_menu_id
      t.integer :menu_type
      t.string :name
      t.string :key
      t.string :url
    end
  end
end
