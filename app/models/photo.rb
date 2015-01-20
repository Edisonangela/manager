# == Schema Information
#
# Table name: photos
#
#  id          :integer          not null, primary key
#  target_type :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  data        :string(255)
#

class Photo < ActiveRecord::Base
  mount_uploader :data, MainUploader

  validates :data, presence: true
end
