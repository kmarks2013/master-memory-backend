class AuthController < ApplicationController
    def login
        user = User.find_by(username: params[:username])
        if user
            is_authenticated = user.authenticate(params[:password])
            if is_authenticated
                render json: {token: encode_token(user_payload(user)), user: user}
            else
                render json: {error: "Wrong username/password, please try again!"}
            end
        else
            render json: {error: "Unable to locate a user."}
        end
    end
end
