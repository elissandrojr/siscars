Rails.application.routes.draw do

  devise_for :usuarios

  resources :usuarios
  resources :carros do
    resources :file_doc, only: [:new, :create, :destroy]
  end

  root to: 'carros#index'
end
