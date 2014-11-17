Rails.application.routes.draw do
  root 'haikus#index'
  
  get 'haikus/index'

  resources :haikus
  
end
