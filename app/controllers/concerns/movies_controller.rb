class MoviesController < ApplicationController
    #  GET /key
    # before_action
    # $ rails g controller Movies --not-test-framework
    def index
        #  send a response for each request- ie render method 
        # By convention, Rails will look for a view template that matches the name of the controller and action
        # That render method is a powerful bit of code. Keep in mind that as a server, it's always our job to send back a response to every request. When we're developing Rails APIs, using render to send back JSON data will be our goal for almost every request!
        # only: OR except: OR methods: provides custom rendering for whatever keys in data you want
        movies = Movie.all 
        render json: movies, only: [:title, :rating]
    end
    # get "/movies"
    def show
        # find a cheese by ID from the URL (params[:id] time)
        movies = Movies.find_by(:id params[:id])
        if movies
            render json: movies 
        else 
            render json: {error: "Movie not found"}
         # send a JSON response using that cheese object
        end
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