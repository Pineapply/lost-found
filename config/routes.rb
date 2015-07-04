Rails.application.routes.draw do
  root to: 'visitors#index'

  resources :users
  resources :owners, controller: 'users', type: 'Owner'
  resources :reporters, controller: 'users', type: 'Reporter'
  resources :items
  resources :lines
  resources :stops

  get 'lost', to: 'lost#index'
end
