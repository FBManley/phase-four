class KeyController < ApplicationController
    #  GET /key
    # before_action
    
    def index
        #  send a response for each request- ie render method 
        # By convention, Rails will look for a view template that matches the name of the controller and action
        # That render method is a powerful bit of code. Keep in mind that as a server, it's always our job to send back a response to every request. When we're developing Rails APIs, using render to send back JSON data will be our goal for almost every request!
        render json: {hello: "MY KEYS"} 

    end
end