module Collectable
  extend ActiveSupport::Concern

  included do
    
    attr_readonly :collectors_count

    has_many :collections, as: :target
    has_many :collectors, through: :collections, class_name: 'User', source: :user
  end

  def collected_by?(current_user)
    return false if current_user.nil?
    
    !!collections.where(user_id: current_user.id).first
  end
end