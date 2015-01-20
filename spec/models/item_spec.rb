# == Schema Information
#
# Table name: items
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  category_id    :integer
#  description    :text
#  comments_count :integer          default(0)
#  price          :decimal(20, 2)
#  created_at     :datetime
#  updated_at     :datetime
#  level          :integer          default(0)
#  code           :string(255)
#  fans_count     :integer          default(0)
#  photos_count   :integer          default(0)
#

require 'spec_helper'

describe Item do
  pending "add some examples to (or delete) #{__FILE__}"
end
