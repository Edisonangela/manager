# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  name                   :string(255)
#  rating                 :integer
#  points                 :integer          default(0)
#  mobile_phone           :string(255)
#  gender                 :string(255)
#  bio                    :text
#  orders_count           :integer          default(0)
#  openid                 :string(255)
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :trackable, :rememberable
         # :registerable,
         # :recoverable,
         # :rememberable,
         # :validatable

  has_many :collections, as: :target
  has_many :addresses

  symbolize :gender, in: [:male, :female], scopes: :shallow, methods: true, default: :male

  scope :recently, ->{ order('created_at desc').limit(10) }
end
