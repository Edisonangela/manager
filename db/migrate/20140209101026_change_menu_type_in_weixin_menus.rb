class ChangeMenuTypeInWeixinMenus < ActiveRecord::Migration
  def change
    change_column :weixin_menus, :menu_type, :string
    change_column :weixin_sub_menus, :menu_type, :string
  end
end
