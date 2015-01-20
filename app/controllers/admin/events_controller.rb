class Admin::EventsController < Admin::BaseController
  main_nav_highlight :events
  def create
    end_of_association_chain.new(event_params)
    create!{
      collection_path
    }
  end

  def update
    resource.update_attributes(event_params)
    update!{
      collection_path
    }
  end

  private
    def event_params
      params.require(:event).permit!
    end
end
