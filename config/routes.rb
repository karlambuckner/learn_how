Rails.application.routes.draw do

  devise_for :users

  root :to => 'events#index'

  resources :order
  resources :order_items
  resource :cart, only: [:show]
  resources :events
end
