Rails.application.routes.draw do
  root to: 'stations#index'
  resources :lines do
    resources :stops
  end
  resources :stations do
    resources :stops
  end
  resources :stops do
    resources :stations
    resources :lines
  end


end
