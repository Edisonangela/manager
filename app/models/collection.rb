# == Schema Information
#
# Table name: collections
#
#  id          :integer          not null, primary key
#  target_id   :integer
#  target_type :string(255)
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Collection < ActiveRecord::Base

  belongs_to :user, counter_cache: true
  belongs_to :target, polymorphic: true, counter_cache: :collectors_count
  
end
