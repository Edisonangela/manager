# == Schema Information
#
# Table name: packages
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  items_count :integer          default(0)
#  created_at  :datetime
#  updated_at  :datetime
#  price       :decimal(20, 2)   default(0.0)
#

class Package < ActiveRecord::Base

  attr_readonly :items_count

  validates :name, :description, :price, presence: true

  has_many :package_items
  accepts_nested_attributes_for :package_items
end
