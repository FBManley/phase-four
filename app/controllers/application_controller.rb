class ApplicationController < ActionController::Base
    # when user makes request w GET/POST/DELETE http verb , then run code in this controller
    include ActionController::Cookies
end
