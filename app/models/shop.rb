# == Schema Information
#
# Table name: shops
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  logo             :string(255)
#  description      :text
#  location         :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  lat              :float
#  lng              :float
#  collectors_count :integer          default(0)
#  fans_count       :integer          default(0)
#  photos_count     :integer          default(0)
#

class Shop < ActiveRecord::Base
  include Collectable

  has_many :photos, class_name: 'ShopPhoto'

  accepts_nested_attributes_for :photos, reject_if: proc { |attributes| attributes['data'].blank? }

  def logo_url(width=100, height=100)
    logo << "?imageView2/1/w/#{width}/h/#{height}/format/jpg"
  end
end
