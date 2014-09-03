Rails.application.routes.draw do
  root to: 'lines#index'
  resources :lines do
    resources :stations
  end
end
