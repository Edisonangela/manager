# == Schema Information
#
# Table name: orders
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  amount        :decimal(10, 2)
#  items_count   :integer          default(0)
#  contact_name  :string(255)
#  contact_phone :string(255)
#  address       :string(255)
#  body          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  state         :string(255)
#  code          :string(255)
#  delivered_at  :datetime
#  confirmed_at  :datetime
#  canceled_at   :datetime
#  position      :integer
#

class Order < ActiveRecord::Base
  include AASM

  attr_readonly :items_count

  belongs_to :user
  has_many :order_items

  default_scope { order('created_at desc') }

  symbolize :state, in: [:pending, :processing, :delivering, :confirmed, :canceled], default: :pending, scopes: :shallow

  aasm column: :state do
    state :pending, initial: true
    state :processing
    state :delivering, before_enter: :set_delivered_at
    state :confirmed, before_enter: :set_confirmed_at
    state :canceled, before_enter: :set_canceled_at

    event :process do
      transitions from: :pending, to: :processing
    end

    event :deliver do
      transitions from: :processing, to: :delivering
    end

    event :confirm do
      transitions from: :delivering, to: :confirmed
    end

    event :cancel do
      transitions from: :confirmed, to: :canceled
    end
  end

  def set_delivered_at
    self.delivered_at = Time.now
  end
  
  def set_confirmed_at
    self.confirmed_at = Time.now
  end

  def set_canceled_at
    self.canceled_at = Time.now
  end
end
