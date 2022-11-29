Rails.application.routes.draw do
  # When we GET (method) req to /key path, run the index method in the KeyController (req/resp cycle)
  get "/key", to: "key#index"
end
