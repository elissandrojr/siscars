Rails.application.routes.draw do
  resources :usuarios
  resources :carros
  root to: 'carros#index'
end
