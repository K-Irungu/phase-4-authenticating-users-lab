class SessionsController < ApplicationController

    # Checks db for user with username that matches user input
    # If so, adds that record's user_id to session hash, then renders that user
    def create
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        render json: user
    end

    # Remove user_id from session hash
    # Page refreshes to display login instead
    def destroy
        session.delete :user_id
        head :no_content
    end


end
