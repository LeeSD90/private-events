Rails.application.routes.draw do
  get 'events/index'
  get 'events/new'
  post 'events/create'
  get 'events/show'
  get '/signup',   to: 'users#new'
  post '/signup',  to: 'users#create'
  get  '/login',    to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete  '/logout',    to: 'sessions#destroy'
  resources :events, only: [:new, :create, :show, :index]
  resources :users, only: [:new, :create, :show]
end
