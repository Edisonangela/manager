# == Schema Information
#
# Table name: members
#
#  id           :integer          not null, primary key
#  openid       :integer
#  phone        :string(255)
#  orders_count :integer
#  created_at   :datetime
#  updated_at   :datetime
#

require 'spec_helper'

describe Member do
  pending "add some examples to (or delete) #{__FILE__}"
end
