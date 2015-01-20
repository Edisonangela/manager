# == Schema Information
#
# Table name: items
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  category_id    :integer
#  description    :text
#  comments_count :integer          default(0)
#  price          :decimal(20, 2)
#  created_at     :datetime
#  updated_at     :datetime
#  level          :integer          default(0)
#  code           :string(255)
#  fans_count     :integer          default(0)
#  photos_count   :integer          default(0)
#

class Item < ActiveRecord::Base
  include Likeable

  LEVEL = [['不辣', 0], ['微辣', 1], ['中辣', 2], ['重辣', 3]]
  
  acts_as_taggable_on :materials

  has_many :comments, as: :target, dependent: :destroy
  has_many :photos, class_name: 'ItemPhoto', dependent: :destroy

  belongs_to :package
  belongs_to :category, counter_cache: true

  accepts_nested_attributes_for :photos

  scope :popular, ->{ order('fans_count DESC, comments_count DESC').limit(5) }

  def cover_url
    photos.first.try(:data_url)
  end

  def banner_url
    photos.first.try(:data_url, 640, 388)
  end
end
