Shumian::Application.routes.draw do

  devise_for :admin_users, controllers: { sessions: 'admin/sessions' }
  devise_for :users

  resources :items, only: [ :index, :show ] do
    collection do
      post :handle_submit
    end
  end

  resources :shops, only: [ :index, :show ]

  resources :orders
  resources :photos, only: :create

  scope 'my' do
    get 'profile' => 'users#show', as: :my_profile
    get 'orders' => 'users#orders', as: :my_orders
  end

  namespace :admin do
    resources :users
    resources :shops
    resources :items
    resources :events
    resources :categories do
      collection do
        post :sort
      end
      post :rename
    end
    resources :packages

    resources :orders

    resources :weixin_menus do
      collection do
        get 'sync'
        get 'load_remote'
      end
    end
    root 'home#index'
  end

  namespace :weixin do
    get '/' => 'base#verify'
    post '/' => 'service#create', :defaults => { :format => 'xml' }
  end

  root 'home#index'

end
