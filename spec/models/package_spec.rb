# == Schema Information
#
# Table name: packages
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  items_count :integer          default(0)
#  created_at  :datetime
#  updated_at  :datetime
#  price       :decimal(20, 2)   default(0.0)
#

require 'spec_helper'

describe Package do
  pending "add some examples to (or delete) #{__FILE__}"
end
