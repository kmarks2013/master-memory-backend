class NumbersController < ApplicationController
    def index
        render json: Number.all
    end

    def show
        number = Number.find(params[:id])
    end
end
