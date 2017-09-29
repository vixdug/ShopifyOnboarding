Rails.application.routes.draw do

  root 'dashboards#hello'

  get '/hello' => 'dashboards#hello'
  get '/hi' => 'dashboards#hi'
  get '/personalized/:name' => 'dashboards#personalized'
  get '/reversed/:name' => 'dashboards#reversed'

  resources :users

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
