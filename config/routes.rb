Rails.application.routes.draw do
  devise_for :users
  
  root to: 'pages#home'
  #get 'dashboard', to: 'pages#dashboard '

  resources :boats do
    resources :orders, only: [:index, :new, :create]
  end
  resources :orders, only: [:edit, :show, :destroy, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
