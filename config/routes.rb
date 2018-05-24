Rails.application.routes.draw do

  root 'welcome#home'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'
  post '/users/new', to: 'users#create'

  resources :recipes
  resources :ingredients
  resources :users, only: [:show, :new, :create, :destroy]


end
