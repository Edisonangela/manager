# == Schema Information
#
# Table name: order_items
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  item_id    :integer
#  number     :integer          default(1)
#  amount     :decimal(10, 2)
#  created_at :datetime
#  updated_at :datetime
#

class OrderItem < ActiveRecord::Base

  belongs_to :order, counter_cache: :items_count
  belongs_to :item

end
