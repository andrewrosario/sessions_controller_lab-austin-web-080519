class SessionsController < ApplicationController

    def hello
        byebug
    end

    def create
        if params[:name] == nil || params[:name].empty?
            redirect_to login_path
        else 
            session[:name] = params[:name]
            redirect_to root_path
        end
    end

    def new

    end

    def destroy
        session[:name] = nil
    end

    
end
