class GamePresidentsController < ApplicationController
    def index
        render json: GamePresident.all
    end
end
