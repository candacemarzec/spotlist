Rails.application.routes.draw do
  
  namespace :api do

    post "/users" => "users#create"
    get "/users/me" => "users#show"
    patch "/users/me" => "users#update"
    delete "/users/me" => "users#destroy"

    post "/sessions" => "sessions#create"

    get "/lists" => "lists#index"
    post "/lists" => "lists#create"
    get "/lists/:id" => "lists#show"
    patch "/lists/:id" => "lists#update"
    delete "/lists/:id" => "lists#destroy"

    post "/items" => "items#create"
    get "/items/:id" => "items#show"
    patch "/items/:id" => "items#update"
    delete "/items/:id" => "items#destroy"
    

    post "/households" => "households#create"
    get "/household" => "households#show"
    patch "/households/:id" => "households#update"
    delete "/households/:id" => "households#destroy"


  end 

  get "/users/new" => "users#new"
  get "/users/:id/edit" => "users#edit"

  get "/lists/new" => "lists#new"
  get "/lists/:id/edit" => "lists#edit"

  get "/items/new" => "items#new"
  get "/items/:id/edit" => "items#edit"

  get "/households/new" => "households#new"
  get "/households/:id/edit" => "households#edit"

end
