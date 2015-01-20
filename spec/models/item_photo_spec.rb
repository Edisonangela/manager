# == Schema Information
#
# Table name: item_photos
#
#  id         :integer          not null, primary key
#  item_id    :integer
#  data       :string(255)
#  position   :integer          default(1)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe ItemPhoto do
  pending "add some examples to (or delete) #{__FILE__}"
end
