class UsersController < ApplicationController
    def index
        render json:User.all
    end

    def show
        user = User.find(params[:id])
        render json:user
    end

    def create
        user = User.create(user_params)
        render json:user
    end

    def update
        user = User.find(params[:id])
        if user.update(user_params)
            render json:user
        else
            render json: {error: "You don't have permission to update this account."}
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: {}
    end

    private

    def user_params
        params.permit(:name, :age, :username, :password, :email)
    end
end
