Rails.application.routes.draw do
  resources :stops
  get 'lost/index'

  root to: 'visitors#index'
end
