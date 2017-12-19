Rails.application.routes.draw do
  resources :charges
  get 'charges/new'

  get 'charges/create'

  get 'thanks', to: 'charges#thanks', as: 'thanks'

  devise_for :users

  root :to => 'events#index'

  resources :orders
  resources :order_items
  resource :cart
  resources :events
end
