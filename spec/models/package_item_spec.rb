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

require 'spec_helper'

describe PackageItem do
  pending "add some examples to (or delete) #{__FILE__}"
end
