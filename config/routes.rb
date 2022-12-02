Rails.application.routes.draw do
  # When we GET (method) req to /key path, run the index method in the KeyController (req/resp cycle)
  resources :movies, only: [:show, :create, :new, :edit, :update]
  # routes and symbols
  #  can use custom routes: requires http verb, url, controller#action OR 
  # resource: generate 7 routes 
  # get "/key", to: "key#index"
  get '/movies', to: 'movies#index'
  get '/movies/:id', to: 'movies#show'
end
# get '/movies/ranked', to: 'movies#all_movies'
# get '/movies/highest-rated', to: 'movies#highest_rated'
 