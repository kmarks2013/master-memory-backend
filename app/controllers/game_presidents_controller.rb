class GamePresidentsController < ApplicationController
    def index
        render json: GamePresident.all
    end

    def show
        game_president = GamePresident.find(params[:id])
        render json:game_president
    end
end
