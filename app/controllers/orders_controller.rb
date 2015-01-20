class OrdersController < WxBaseController
  before_filter :authenticate_user!

  def new

  end


protected
  def begin_of_association_chain
    current_user
  end

  def collection
    @orders = end_of_association_chain.page(params[:page])
  end
end
