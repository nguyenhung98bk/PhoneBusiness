Rails.application.routes.draw do
  scope do
    root 'application#index'
    get '/*path', to: 'application#index'
  end
end
