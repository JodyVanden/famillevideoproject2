Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'not_allowed', to: 'pages#not_allowed' #, as: :not_allowed
  resources :videos do
    resources :comments, only: [:create, :destroy]
    # resources :marks, only: :create
  end

  root to: 'videos#index'
end
