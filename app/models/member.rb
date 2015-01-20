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

class Member < ActiveRecord::Base
end
