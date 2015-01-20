# == Schema Information
#
# Table name: shops
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  logo             :string(255)
#  description      :text
#  location         :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  lat              :float
#  lng              :float
#  collectors_count :integer          default(0)
#  fans_count       :integer          default(0)
#  photos_count     :integer          default(0)
#

require 'spec_helper'

describe Shop do
  pending "add some examples to (or delete) #{__FILE__}"
end
