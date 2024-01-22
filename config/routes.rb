Rails.application.routes.draw do
  root 'products#index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "spaghetti", to: 'products#spaghetti'
  get "pizza", to: 'products#pizza'
  get "water", to: 'products#water'
  get "combo", to: 'products#combo'
  resources :users do
    resources :carts, :bills
  end
  resources :products
  namespace :admin do
    resources :users, :products, :carts, :bills
  end
  
end
