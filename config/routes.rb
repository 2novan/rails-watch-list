Rails.application.routes.draw do
  resources :lists
  # get "/lists", to: "lists#index"
  # get "/lists/new", to: "lists#new"
  # post "/lists", to: "lists#create"
  # get "/lists/:id", to: "lists#show"
  resources :lists do
    resources :bookmarks
  end
end
