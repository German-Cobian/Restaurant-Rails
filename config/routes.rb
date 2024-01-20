Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'

  get 'search', to: 'menus#search'

  get 'menu', to: 'menus#index'
  get 'catering', to: 'pages#catering'
  get 'info', to: 'pages#info'
  get 'reviews', to: 'pages#reviews' 
  get 'cart', to: 'cart#show'
  
  resources :categories
  resources :products
  resources :order_items
  
end
