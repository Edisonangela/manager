class PhotosController < ApplicationController
  before_filter :authenticate_admin_user!

  respond_to :json

  def create
    @image = Photo.new
    @image.data = params[:image]
    @image.target_type = params[:page]
    @image.save!

    case params[:page]
    when 'item_photo'
      render params[:page]
    end
  end

end
