class Admin::BaseController < InheritedResources::Base
  before_action :authenticate_admin_user!

  layout 'admin'
end