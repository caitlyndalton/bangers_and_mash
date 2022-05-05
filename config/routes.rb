Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/bangers" => "bangers#index"
  post "/bangers" => "bangers#create"
  get "/bangers/:id" => "bangers#show"
  patch "/bangers/:id" => "bangers#update"
  delete "/bangers/:id" => "bangers#destroy"
end
