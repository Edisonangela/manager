class Admin::ShopsController < Admin::BaseController
  main_nav_highlight :shops


  def create
    @shop = end_of_association_chain.new(shop_params)

    create! { collection_path }
  end

  def update
    if resource.update_attributes shop_params
      redirect_to collection_path
    else
      render :edit
    end
  end

  protected

  def collection
    @shops ||= end_of_association_chain.page(params[:page])
  end
  
  def shop_params
    params.require(:shop).permit!
  end
end
