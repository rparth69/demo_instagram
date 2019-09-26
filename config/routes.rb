Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create]
  root to: 'home#index'
end
