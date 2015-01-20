# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  target_id   :integer
#  target_type :string(255)
#  content     :text
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#  rating      :integer          default(0)
#

require 'spec_helper'

describe Comment do
  pending "add some examples to (or delete) #{__FILE__}"
end
