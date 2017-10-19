Rails.application.routes.draw do
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'

  root to: 'pages#home'

  devise_for :users
  resources :products, only: [:index, :show]
  resources :carts
  resources :order_items
end
