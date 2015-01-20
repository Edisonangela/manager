# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  position    :integer          default(0)
#  items_count :integer          default(0)
#

class Category < ActiveRecord::Base

  attr_readonly :items_count

  validates :name, presence: true, uniqueness: true

  has_many :items, dependent: :destroy
  
  scope :order_by_code, -> { order('position') }

  default_scope { order(:id) }

  class << self
    def to_arr
      self.all.pluck(:name, :id)
    end
  end
end
