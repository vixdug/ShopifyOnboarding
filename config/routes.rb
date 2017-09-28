Rails.application.routes.draw do

  get '/hello' => 'dashboards#hello'
  get '/hi' => 'dashboards#hi'
  get '/personalized/:name' => 'dashboards#personalized'
  get '/reversed/:name' => 'dashboards#reversed'
end
