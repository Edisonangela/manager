class Weixin::BaseController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_filter :check_weixin_legality

  layout 'wechat'

  def verify
    render text: params[:echostr]
  end

private

  # 根据参数校验请求是否合法，如果非法返回错误页面
  def check_weixin_legality
    render :text => "Forbidden", :status => 403 unless params[:timestamp] && params[:nonce] && params[:signature]
    array = [::WEIXIN_TOKEN, params[:timestamp], params[:nonce]].sort
    render :text => "Forbidden", :status => 403 if Digest::SHA1.hexdigest(array.join) != params[:signature]
  end
end