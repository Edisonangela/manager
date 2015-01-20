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

require 'spec_helper'

describe OrderItem do
  pending "add some examples to (or delete) #{__FILE__}"
end
