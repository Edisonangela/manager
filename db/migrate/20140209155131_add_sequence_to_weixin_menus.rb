class AddSequenceToWeixinMenus < ActiveRecord::Migration
  def change
    add_column :weixin_menus, :sequence, :integer, default: 0
    add_column :weixin_sub_menus, :sequence, :integer, default: 0
  end
end
