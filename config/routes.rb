Rails.application.routes.draw do
  root to: 'visitors#index'

  resources :users
  resources :owners, controller: 'users', type: 'Owner'
  resources :reporters, controller: 'users', type: 'Reporter'
  resources :missings, controller: 'items', type: 'Missing'
  resources :reporteds, controller: 'items', type: 'Reported'
  resources :missing, controller: 'items', type: 'Missing'
  resources :reported, controller: 'items', type: 'Reported'
  resources :stops

  get 'lost', to: 'lost#index'
  get 'found', to: 'found#index'
end
