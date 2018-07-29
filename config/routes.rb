Rails.application.routes.draw do
  get 'sessions/new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/secret' => "secrets#show"

  root "sessions#new"
end
