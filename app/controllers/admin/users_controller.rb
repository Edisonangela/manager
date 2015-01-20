class Admin::UsersController < Admin::BaseController
  main_nav_highlight :users
  defaults resource_class: User, collection_name: 'users', instance_name: 'user'

  def update
    resource.update_attributes!(user_params)
    update! { collection_path }
  end

  def index
    @users_recently = User.recently
    index!
  end

protected
  def user_params
    params.require(:user).permit!
  end

  def collection
    User.all.page(params[:page])
  end
end
