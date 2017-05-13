Rails.application.routes.draw do

  resources :orders

 # get "pending", to: "orders#pending"
 # get '/orders/:id' => 'orders#pending'
 # get '/orders/pending', controller: 'orders_controller', action: 'pending'
  get 'orders/pending', to: 'orders#pending'
  # get '/orders/pending'

  get 'welcome/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/profile/index'

  root to: 'home#index'
end
