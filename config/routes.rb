Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :client do
    get "/results" => "results#index"

    get "/signup" => "users#new"
    post "/users" => "users#create"
    
    get "/login" => "sessions#new"
    post "/login" => "sessions#create"
    delete "/logout" => "sessions#destroy"
  end
end
