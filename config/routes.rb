Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'


  get 'menu', to: 'menus#index'
  get 'catering', to: 'pages#catering'
  get 'info', to: 'pages#info'
  
  resources :products
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
