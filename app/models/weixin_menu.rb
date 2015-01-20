# == Schema Information
#
# Table name: weixin_menus
#
#  id                     :integer          not null, primary key
#  menu_type              :string(255)
#  name                   :string(255)
#  key                    :string(255)
#  url                    :string(255)
#  weixin_sub_menus_count :integer          default(0)
#  sequence               :integer          default(0)
#

require 'faraday'

class WeixinMenu < ActiveRecord::Base
  include MenuType

  validates_presence_of :name
  validates_presence_of :key, if: -> { menu_type == 'click' }
  validates_presence_of :url, if: -> { menu_type == 'view' }

  has_many :weixin_sub_menus, -> { order('sequence asc') }, dependent: :destroy
  accepts_nested_attributes_for :weixin_sub_menus, allow_destroy: true

end
