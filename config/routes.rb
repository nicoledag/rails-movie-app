Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root 'sessions#home'
get '/signup' => 'users#new'
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
get '/logout' => 'sessions#destroy'

resources :users
resources :movies
resources :orders




end





