class GameCountriesController < ApplicationController
    def index
        render json: GameCountry.all
    end

    def show
        game = Game.find(params[:id])
        render json:game
    end
end
