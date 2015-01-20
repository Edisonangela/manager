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

class ShopPhoto < ActiveRecord::Base

  belongs_to :shop

  default_scope { order('position ASC, created_at DESC') }

end
