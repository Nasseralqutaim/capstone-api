Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/users/:id" => "users#show"
  post "/address_users" => "address_users#create"
  get "/addresses/:id" => "addresses#show"
  get "/addresses" => "addresses#index"
  get "/artifacts/:id" => "artifacts#show"
  get "/artifacts" => "artifacts#index"
  get "/historical_events" => "historical_events#index"
  get "/historical_events/:id" => "historical_events#show"

  
end



