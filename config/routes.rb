Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %i[show edit update]
  resources :posts, only: %i[new create show destroy]
  root to: 'home#index'
end
