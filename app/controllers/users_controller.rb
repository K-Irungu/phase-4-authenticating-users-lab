class UsersController < ApplicationController

    # Every time page loads, this action checks whether user info in
    # session hash matches any on db. In this case, user_id.

    # If so, displays Welcome page, if not, displays login page. 
    def show
        user = User.find_by(id: session[:user_id])
        if user 
            render json: user
        end
    end
    
end
