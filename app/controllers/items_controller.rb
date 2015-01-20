class ItemsController < WxBaseController
  actions :index, :show

  before_filter :load_categories

  def index
    p current_user
    index!
  end

protected
  def collection
    @items ||= end_of_association_chain.page params[:page]
  end

  def load_categories
    @categories = Category.all
  end
end
