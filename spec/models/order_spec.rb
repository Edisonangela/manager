# == Schema Information
#
# Table name: orders
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  amount        :decimal(10, 2)
#  items_count   :integer          default(0)
#  contact_name  :string(255)
#  contact_phone :string(255)
#  address       :string(255)
#  body          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  state         :string(255)
#  code          :string(255)
#  delivered_at  :datetime
#  confirmed_at  :datetime
#  canceled_at   :datetime
#  position      :integer
#

require 'spec_helper'

describe Order do
  pending "add some examples to (or delete) #{__FILE__}"
end
