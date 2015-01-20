require 'weixin_app'
class Admin::WeixinMenusController < Admin::BaseController
  before_filter :fetch_weixin_menu, only: [:edit, :update]
  before_filter do
    resource = controller_name.singularize.to_sym
    method = "#{resource}_params"
    params[resource] &&= send(method) if respond_to?(method, true)
  end

  def create
    @weixin_menu = end_of_association_chain.new(weixin_menu_params)
    create! { collection_path }
  end

  def update
    update! { collection_path }
  end

  def sync
    response = WeixinApp.create_remote_menu
    body = JSON.parse response.body

    if body['errcode'] == 0
      flash[:notice] = '同步成功'
    else
      flash[:alert] = "#{body['errcode']}, #{body['errmsg']}"
    end
    redirect_to action: :index
  end

  def load_remote
    flash[:notice] = '加载成功' if WeixinApp.load_remote_menus
    redirect_to action: :index
  end

private

  def fetch_weixin_menu
    @menu = WeixinMenu.find params[:id]
  end

  def weixin_menu_params
    params.require(:weixin_menu).permit!
  end
end