class GameCountriesController < ApplicationController
    def index
        render json: GameCountry.all
    end
end
