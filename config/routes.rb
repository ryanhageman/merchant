Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  get 'storefront/index'

  resources :products
  resources :brands
  resources :categories
  root to: 'storefront#index'
  devise_for :users
  resources :users
end
