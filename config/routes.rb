Rails.application.routes.draw do
  resources :carros
  root to: 'carros#index'
end
