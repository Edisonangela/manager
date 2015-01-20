class HomeController < WxBaseController
  def index
    redirect_to items_path
  end
end
