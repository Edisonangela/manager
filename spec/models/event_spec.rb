# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  shop_id    :integer
#  title      :string(255)
#  body       :text
#  banner     :string(255)
#  start_at   :datetime
#  end_at     :datetime
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Event do
  pending "add some examples to (or delete) #{__FILE__}"
end
