class GamePresidentsController < ApplicationController
    def index
        render json: GamePresident.all
    end

    def show
        game_president = GamePresident.find(params[:id])
        render json:game_president
    end

    def create
        game_president = GamePresident.create(game_president_params)
        render json: game_president
    end

    def destroy
        game_president = GamePresident.find([:id])
        game_president.destroy
    end
end
