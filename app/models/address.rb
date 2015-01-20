# == Schema Information
#
# Table name: addresses
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  contact_name  :string(255)
#  contact_phone :string(255)
#  body          :text
#  created_at    :datetime
#  updated_at    :datetime
#

class Address < ActiveRecord::Base
  belongs_to :user
end
