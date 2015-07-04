Rails.application.routes.draw do
  resources :users
  resources :items
  resources :lines
  resources :stops
  root to: 'visitors#index'
  get 'lost', :to => 'lost#index'
end
