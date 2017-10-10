Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :videos, only: [ :index, :show ] do
    resources :comment, only: :create
    resources :marks, only: :create
  end
end
