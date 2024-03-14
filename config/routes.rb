Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :admins do
      resources :auth do
        collection do
          get 'login', to: 'sessions#login'
          post 'login', to: 'sessions#create'
          post 'logout', to: 'sessions#destory'
          delete 'logout', to: 'sessions#destroy'
          post 'check_token', to: 'sessions#check_token'
        end
      end

      resources :staffs
    end

    namespace :staffs do
      resources :auth do
        collection do
          get 'login', to: 'sessions#login'
          post 'login', to: 'sessions#create'
          post 'logout', to: 'sessions#destory'
          delete 'logout', to: 'sessions#destroy'
          post 'check_token', to: 'sessions#check_token'
        end
      end

      resources :categories
      resources :suppliers
      resources :items
    end

    namespace :customers do
      resources :auth do
        collection do
          get 'login', to: 'sessions#login'
          post 'login', to: 'sessions#create'
          post 'logout', to: 'sessions#destory'
          delete 'logout', to: 'sessions#destroy'
          post 'check_token', to: 'sessions#check_token'
        end
      end
      
      post 'account/register', to: 'account#register'
      get 'account/active_account/:token', to: 'account#active_account'
    end

    resources :suppliers
    resources :items do
      collection do
        get :get_item_by_category_ids
      end
    end
    resources :categories
  end

  scope do
    root 'application#index'
    get '/*path', to: 'application#index'
  end
end
