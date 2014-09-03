Rails.application.routes.draw do
  root to: 'stations#index'
  resources :lines
  resources :stations
  resources :stops
end
