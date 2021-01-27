class Api::V1::AuthController < ApplicationController

    def create 
        user = User.find_by(email: params[:email])
        
        if user && user.authenticate(params[:password])
            render json: user
        else
            render json: {error: " Username or password do not exist."}
        end 
    end

end
