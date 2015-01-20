class Weixin::ServiceController < Weixin::BaseController
  before_filter :parse_xml, :check_wechat_user

  def create
    case @xml.MsgType
    when 'event'
      event_message
    when 'text'
      text_message
    # when 'location' # 用户输入地理位置
    #   location_message
    else
      render 'help'
    end
  end

private

  def parse_xml
    if params[:xml]
      @xml = OpenStruct.new params[:xml]
    else
      render "weixin/service/error", layout: false
    end
  end

  def check_wechat_user
    @member = Member.find_or_create_by openid: @xml.FromUserName
  end

  #事件处理
  def event_message
    case @xml.Event
    # when 'subscribe' # 新关注用户
    #   subscribe_event
    # when 'location' # 当用户允许位置获取，微信系统每5秒上报一次地理位置
    #   location_event
    when 'CLICK' # 针对有自定义菜单的公众号
      click_event
    end
  end

  #自定义菜单事件
  def click_event
    event_key = @xml.EventKey
    case event_key
    when 'menu' #订单信息，当前订单，催单
      # @products = Products.sample(5)
    when 'takeout' #店铺列表
      # @products = Products.sample(5)
    end
    render "weixin/service/events/#{event_key}"
  end
end
