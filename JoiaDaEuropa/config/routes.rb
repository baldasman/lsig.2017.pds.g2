Rails.application.routes.draw do

  resources :orders

  get 'pending', to: 'pending#pending'

  get 'canceled', to: 'canceled#canceled'

  get 'concluded', to: 'concluded#concluded'

  get 'accepted', to: 'accepted#accepted'

  get 'welcome/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/profile/index'

  root to: 'pending#pending'
end
