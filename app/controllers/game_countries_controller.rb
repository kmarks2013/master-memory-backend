class GameCountriesController < ApplicationController
    def index
        render json: GameCountry.all
    end

    def show
        game = Game.find(params[:id])
        render json:game
    end

    def create
        game = Game.create(game_params)
        render json: game
    end

    def destroy
        game = Game.find([:id])
        game.destroy
    end
end
