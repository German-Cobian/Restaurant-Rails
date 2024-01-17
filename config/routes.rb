Rails.application.routes.draw do
  resources :categories
  devise_for :users

  root 'pages#home'


  get 'menu', to: 'menus#index'
  get 'catering', to: 'pages#catering'
  get 'info', to: 'pages#info'
  get 'reviews', to: 'pages#reviews'
  
  resources :products
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
