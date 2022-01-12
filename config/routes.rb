Rails.application.routes.draw do
  get '/' => "users#home"
  post '/login/:id' => "users#login"
  get '/users/index' => "users#index"
  get '/users/:id' => "users#show"
  post '/users/:id' => "posts#save"
  delete '/posts/:id' => "posts#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
