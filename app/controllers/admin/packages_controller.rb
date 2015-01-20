class Admin::PackagesController < Admin::BaseController
  main_nav_highlight :packages
  def create
    end_of_association_chain.new(package_params)
    create!{
      collection_path
    }
  end

  def update
    resource.update_attributes(package_params)
    update!{
      collection_path
    }
  end

  protected
    def collection
      end_of_association_chain.page(params[:page])
    end

  private
    def package_params
      params.require(:package).permit!
    end
end
