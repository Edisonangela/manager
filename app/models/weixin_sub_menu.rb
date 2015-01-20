# == Schema Information
#
# Table name: weixin_sub_menus
#
#  id             :integer          not null, primary key
#  weixin_menu_id :integer
#  menu_type      :string(255)
#  name           :string(255)
#  key            :string(255)
#  url            :string(255)
#  sequence       :integer          default(0)
#

class WeixinSubMenu < ActiveRecord::Base
  include MenuType

  validates_presence_of :name, :menu_type
  validates_presence_of :key, if: -> { menu_type == 'click' }
  validates_presence_of :url, if: -> { menu_type == 'view' }

  belongs_to :weixin_menu, counter_cache: true
end
