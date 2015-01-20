class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout proc { |controller| devise_controller? ? 'admin' : 'application' }

  class << self
    def main_nav_highlight(name)
      before_filter { |c| c.instance_variable_set(:@main_nav, name) }
    end

    def sec_nav_highlight(name)
      before_filter { |c| c.instance_variable_set(:@sec_nav, name) }
    end
  end
  
end
