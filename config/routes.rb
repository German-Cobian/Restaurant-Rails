Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'

  get 'search', to: 'menus#search'

  get 'menu', to: 'menus#index'
  get 'catering', to: 'pages#catering'
  get 'info', to: 'pages#info'
  get 'reviews', to: 'pages#reviews'
  
  resources :products
  resources :categories

  get 'cart/show'
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
