Rails.application.routes.draw do
  resources :users
  resources :reviews
  resources :favorites
  resources :usernames
  resources :resorts

  post '/login', to: "auth#create"
  get '/profile', to: 'users#profile'

  get '/weather', to: "weather#index"

  get '/weather/:id', to: "weather#show"


end
