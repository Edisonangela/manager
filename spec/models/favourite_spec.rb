# == Schema Information
#
# Table name: favourites
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  target_id   :integer
#  target_type :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Favourite do
  pending "add some examples to (or delete) #{__FILE__}"
end
