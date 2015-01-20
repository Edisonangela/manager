module Admin::EventsHelper

  def render_event_banner(event)
    if event.new_record?
      image_tag ''
    else
      image_tag event.banner_url(100, 100)
    end
  end
end
