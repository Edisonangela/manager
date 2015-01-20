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

class Comment < ActiveRecord::Base
  validates :body, presence: true

  belongs_to :target, polymorphic: true, counter_cache: :comments_count

  belongs_to :user
end
