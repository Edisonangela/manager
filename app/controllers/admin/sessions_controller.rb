class Admin::SessionsController < Devise::SessionsController
  layout 'admin'

  private

  def after_sign_in_path_for(resource)
    admin_root_path
  end
end
