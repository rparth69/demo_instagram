Rails.application.routes.draw do
  get 'search' => 'search#index'
  devise_for :users
  resources :users, only: %i[show edit update]
  resources :posts, only: %i[new create show destroy]
  root to: 'home#index'
end
