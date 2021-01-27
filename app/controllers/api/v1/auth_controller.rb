class Api::V1::AuthController < ApplicationController

    def create 
        user = User.find_by(email: params[:email])
        
        if user && user.authenticate(params[:password])
            render json: {id: user.id, first_name: user.first_name, last_name: user.last_name, email: user.email}
        else
            render json: {error: " Username or password do not exist."}
        end
    end

end
