class UsersController < ApplicationController
    def index
        render json:User.all
    end

    def create
        user = User.create
        render json:user
    end
end
