# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  shop_id    :integer
#  title      :string(255)
#  body       :text
#  banner     :string(255)
#  start_at   :datetime
#  end_at     :datetime
#  created_at :datetime
#  updated_at :datetime
#

class Event < ActiveRecord::Base

  validates :start_at, :end_at, presence: true
  validates :title, presence: true, uniqueness: true

  belongs_to :shop

  def banner_url(width=360, height=200)
    banner << "?imageView2/1/w/#{width}/h/#{height}/format/jpg"
  end
end
