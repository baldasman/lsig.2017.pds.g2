Rails.application.routes.draw do

  resources :orders
  resources :searches

  get 'pending', to: 'pending#pending'

  post 'pending/accept_order/:id', to: 'pending#accept_order', as: 'accept_order'

  post 'pending/cancel_order/:id', to: 'pending#cancel_order', as: 'cancel_order'

  get 'canceled', to: 'canceled#canceled'

  get 'concluded', to: 'concluded#concluded'

  get 'accepted', to: 'accepted#accepted'

  post 'accepted/conclude_order/:id', to: 'accepted#conclude_order', as: 'conclude_order'


  get 'welcome/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/profile/index'

  root to: 'welcome#index'
end
