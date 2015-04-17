Rails.application.routes.draw do
  root to: 'haikus#index'

  resources :haikus

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :haikus, only: [:index, :create, :destroy]
      resources :words, only: [:index, :create, :destroy]
    end
  end

end
