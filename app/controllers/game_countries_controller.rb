class GameCountriesController < ApplicationController
    def index
        render json: GameCountry.all
    end

    def show
        game_country = GameCountry.find(params[:id])
        render json:game_country
    end

    def create
        game_country = GameCountry.create(game_country_params)
        render json: game_country
    end

    def destroy
        game_country = GameCountry.find([:id])
        game_country.destroy
    end

    private

    def game_country_params
        params.permit(:game_id, :country_id)
    end
end
