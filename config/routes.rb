Rails.application.routes.draw do
  root to: 'haikus#index'
  resources :haikus, only: [:index, :create, :destroy]
  resources :words, only: [:index, :create, :destroy]
  
end
