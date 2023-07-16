Rails.application.routes.draw do
  devise_for :users
  resources :userdums
  root 'home#index'
  get 'home/about'
  get 'users/sign_in'
  get 'users/sign_up'
  get 'home/subscription'
  get 'home/request'
  # Defines the root path route ("/")
  # root "articles#index"
end