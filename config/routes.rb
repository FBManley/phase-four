Rails.application.routes.draw do
  # When we GET (method) req to /key path, run the index method in the KeyController (req/resp cycle)
  # resources :movies
  # routes and symbols
  
  get "/key", to: "key#index"
end
