# == Schema Information
#
# Table name: package_items
#
#  id         :integer          not null, primary key
#  package_id :integer
#  item_id    :integer
#  position   :integer          default(0)
#  created_at :datetime
#  updated_at :datetime
#

class PackageItem < ActiveRecord::Base
  belongs_to :package
  belongs_to :item
  
  default_scope { order('position') }
end
