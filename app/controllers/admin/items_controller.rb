class Admin::ItemsController < Admin::BaseController
  main_nav_highlight :items

  def create
    @item = end_of_association_chain.new item_params

    create! { collection_path }
  end

  def update
    if resource.update_attributes item_params
      redirect_to collection_path
    else
      render :edit
    end
  end

  protected

  def collection
    @items ||= end_of_association_chain.all
  end

  def item_params
    params.require(:item).permit!
  end
end
