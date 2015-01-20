class Admin::CategoriesController < Admin::BaseController
  main_nav_highlight :categories

  custom_actions collection: :sort

  def create
    end_of_association_chain.new(category_params)
    create!{
      collection_path
    }
  end

  def update
    resource.update_attributes!(category_params)
    update!{
      collection_path
    }
  end
  
  def sort
    categories = {}
    params[:p].split(',').each_with_index { |id, index| categories[id] = { position: index + 1 } }

    Category.update categories.keys, categories.values
    render nothing: true
  end

  def rename
    @category = Category.find(params[:category_id])
    @category.update_attributes(name: params[:value])
    render nothing: true
  end

  protected
    def collection
      end_of_association_chain.order_by_code
    end

  private
    def category_params
      params.require(:category).permit!
    end
end
