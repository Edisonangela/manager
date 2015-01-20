# == Schema Information
#
# Table name: shop_photos
#
#  id         :integer          not null, primary key
#  shop_id    :integer
#  data       :string(255)
#  position   :integer          default(1)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe ShopPhoto do
  pending "add some examples to (or delete) #{__FILE__}"
end
