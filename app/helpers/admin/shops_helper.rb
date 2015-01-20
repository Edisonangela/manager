module Admin::ShopsHelper

  def render_shop_photo(photo)
    if photo.new_record?
      image_tag ''
    else
      image_tag photo.data_url(100, 100)
    end
  end

  def render_shop_logo(shop)
    if shop.new_record?
      image_tag ''
    else
      image_tag shop.logo_url(100, 100)
    end
  end
end
