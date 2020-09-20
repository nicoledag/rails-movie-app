class SessionsController < ApplicationController
    # skip_before_action :redirect_if_not_logged_in

    def home 

    end

    def new 
        if logged_in?
        #   redirect_to projects_path
        end
    end


    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
        set_session_and_redirect
        else
            redirect_to login_path  #Does not allow for field w/errors and does not keep data.
            #not rendering log in for extra security.  User needs to reenter information.

            flash[:message] = "There was an error with your request. Please try again."
        end
    end

    def destroy
        session.clear
        redirect_to '/'
    end

    private

    def set_session_and_redirect
        session[:user_id] = @user.id
        # redirect_to projects_path
    end



end
