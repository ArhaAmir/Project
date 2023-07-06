Rails.application.routes.draw do
  resources :users
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
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
