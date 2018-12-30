Rails.application.routes.draw do
  get 'ownerships/create'

  get 'ownerships/destroy'

  get 'items/new'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'toppages/index'

  root to: "toppages#index"
  get "signup", to: "users#new"
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  resources :users, only: [:show, :new, :create]
  
  resources :items, only: [:new, :show]
  resources :ownerships, only: [:create, :destroy]
end
