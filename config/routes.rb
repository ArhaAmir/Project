Rails.application.routes.draw do
  devise_for :users

  resources :stories do
     resources:comments, only:[:create]
  end
  resources :stories do
    resources :comments, only: [:create]
  end
  
  resources :likes, only:[:create,:destory]

  get 'home/about'
  root 'home#index'
  get 'home/stories'

  #devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
