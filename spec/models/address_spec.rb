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

require 'spec_helper'

describe Address do
  pending "add some examples to (or delete) #{__FILE__}"
end
