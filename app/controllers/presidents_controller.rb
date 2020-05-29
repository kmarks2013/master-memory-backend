class PresidentsController < ApplicationController
    # Show, index
    def index
        render json: President.all
    end
end
