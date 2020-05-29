class PresidentsController < ApplicationController
    def index
        render json: President.all
    end

    def show
        president = President.find(params[:id])
        render json: president
    end
end
