class MoviesController < ApplicationController
    #  GET /key
    # before_action
    # $ rails g controller Movies --not-test-framework
    def index
        #  send a response for each request- ie render method 
        # By convention, Rails will look for a view template that matches the name of the controller and action
        # That render method is a powerful bit of code. Keep in mind that as a server, it's always our job to send back a response to every request. When we're developing Rails APIs, using render to send back JSON data will be our goal for almost every request!
        # only: OR except: OR methods: provides custom rendering for whatever keys in data you want
        
        render json: Movie.all, only: [:title, :rating]
    end
    # get "/movies"
    def show
        # find a cheese by ID from the URL (params[:id] time) find_by returns nil if we find nothing
        movies = Movies.find_by(:id params[:id])
        if movies
            render json: movies, status: :ok
        else 
            render json: {error: "Movie not found"}, status: :not_found
         # send a JSON response using that cheese object
        end
    end 
    def create 
        # how to get inputs for new resource
        movie = Movie.create(title: params[:title], rating: params[:rating])
        render json: movie, status: :created
    end
end
# example controller
# def all_movies 
#     movies = Movie.order(grade: :desc)
#     render json: students
#     # gives array of objects
# end
# def highest_rated
#     movies = Movie.order(grade: :desc).first
#     render json: student
#     # gives one object 
# end