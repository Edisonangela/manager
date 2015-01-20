module Likeable
  extend ActiveSupport::Concern

  included do
    
    attr_readonly :fans_count

    has_many :favourites, as: :target
    has_many :fans, through: :favourites, class_name: 'User', source: :user
  end

  def liked_by?(current_user)
    return false if current_user.nil?
    
    !!favourites.where(user_id: current_user.id).first
  end
end