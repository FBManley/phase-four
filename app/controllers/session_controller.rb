class SessionController < ApplicationController
    # login - create new session (not user)
    def create 
    end
    # logout-destroy session
    def destory 
        session.clear
    end
end

# def show
#     session[:page_views] ||=0
#     session[:page_views] += 1

#     if session[:page_views] <= 3
#       article = Article.find(params[:id])
#       render json: article
#     else 
#       render json: { error: "Maximum pageview limit reached"}, status: :unauthorized
#     end
#   end