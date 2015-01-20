class Admin::OrdersController < Admin::BaseController
  main_nav_highlight :orders

  respond_to :js, only: :index
  def update
    resource.send("#{params[:event]}!")
    update!{
      collection_path
    }
  end

end
