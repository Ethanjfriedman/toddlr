Rails.application.routes.draw do
  root 'sessions#new'

  resources :users do
    member do
      get '/all', to: 'prattles#all', as: :prattles_for
    end
  end

  resources :prattles

  resource :session, only: [:new, :create, :destroy]
end
