# == Schema Information
#
# Table name: item_photos
#
#  id         :integer          not null, primary key
#  item_id    :integer
#  data       :string(255)
#  position   :integer          default(1)
#  created_at :datetime
#  updated_at :datetime
#

class ItemPhoto < ActiveRecord::Base

  belongs_to :item, counter_cache: :photos_count

  default_scope { order('position ASC, created_at DESC') }

  def data_url(width=110, height=72)
    data << "?imageView2/1/w/#{width}/h/#{height}/format/jpg"
  end

end
