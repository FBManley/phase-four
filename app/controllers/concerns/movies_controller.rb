class MoviesController < ApplicationController
    # disable wrap parameters for this controller-> for ALL controllers at to config/initializers/wrap_parameters.rb
    wrap_parameters format: [] 
    # exception handling for whole controller vs explcitly in each method
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
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
        movie = Movies.find_by(id: params[:id])
        if movie
            render json: movie, status: :ok
        else 
            render json: {error: "Movie not found"}, status: :not_found
         # send a JSON response using that cheese object
        end
    end 
    # def show 
    #     movies = Movies.find_by(id: params[:id])
    #     if movies
    #         render json: movies, only: [:title, :genre], methods: [:title_director]
    #               OR  
    #         render json: movies except: [:rating]
    #     else 
    #         render json: {error: "Movie not found"}, status: :not_found
    #     end
    # end

    def create 
        # how to get inputs for new resource
        # movie = Movie.create(title: params[:title], rating: params[:rating])-> explicitly specifying which attributes we'd like our new movie to be created with, there's no chance of a user updating an attribute other than title or rating.
        movie = Movie.create(movie_params)
        render json: movie, status: :created
    end
    def updated 
        # find_by gives us nil where .find() doesnt give us anything if nothing found
        movie = Movie.find_by(id:params[:id])
        if movie
            # update
            movie.update(movie_params)
            render json: movie, status: :accepted
        else
            render json: {error: "Movie not found"}, status: :not_found
        end
    end 

    # def destroy
    #     movie = Movie.find_by(id:parmas[:id])
    #     if movie 
    #         movie.destroy
    #         # 204 status code, indicating that the server has successfully fulfilled the request and that there is no content to send in the response
    #         head :no_content 
    #     else 
    #         render json: {error: "Movie not found"}, status: :not_found
    #     end
    # end
    def destroy
        movie = find_movie
        movie.destroy 
        render json: movie
    end


    private
    def movie_params
        params.permit(:title, :rating)
    end
    def find_movie 
        Movie.find(params[:id])
    end
    def render_not_found_response 
        render json: { error: "Movie not found" }, status: :not_found
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

# custom routes break RESTful conventions. to keep RESTful- create new controller, such as Birds::LikesController, and add an update action in this controller
# def increment_likes
#     bird = Bird.find_by(id: params[:id])
#     if bird
#       bird.update(likes: bird.likes + 1)
#       render json: bird
#     else
#       render json: { error: "Bird not found" }, status: :not_found
#     end
#   end
# in routes- custom action = custom route patch "/birds/:id/like", to: "birds#increment_likes"
# whenever I have the inclination that I want to add a method on a controller that’s not part of the default five or whatever REST actions that we have by default, make a new controller! And just call it that.