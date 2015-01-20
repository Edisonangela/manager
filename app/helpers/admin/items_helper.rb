module Admin::ItemsHelper
  def render_item_photo(photo)
    if photo.new_record?
      image_tag ''
    else
      image_tag photo.data_url(100, 100)
    end
  end
end
