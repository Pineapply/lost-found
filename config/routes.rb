Rails.application.routes.draw do
  resources :stops
  root to: 'visitors#index'
  get 'lost', :to => 'lost#index'
end
