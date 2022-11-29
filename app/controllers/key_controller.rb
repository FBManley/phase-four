class KeyController < ApplicationController
    #  GET /key
    def index
        #  send a response for each request- ie render method
        render json: {hello: "MY KEYS"} 
    end
end