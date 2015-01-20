class WxBaseController < InheritedResources::Base

  before_filter :check_current_user

private
  def check_current_user
    unless user_signed_in?
      if params[:openid]
        user = User.find_by(openid: params[:openid])

        if user.nil?
          user = User.new openid: params[:openid]
          user.save(validate: false)
        end

        sign_in :user, user
      else
        render status: 404, text: "无效会话"
      end
    end
  end
end
