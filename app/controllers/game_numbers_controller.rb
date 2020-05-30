class GameNumbersController < ApplicationController
    def index
        render json: GameNumber.all
    end

    def show
        game_number = GameNumber.find(params[:id])
        render json:game_number
    end

    def create
        game_number = GameNumber.create(game_numbers_params)
        render json: game_number
    end

    def destroy
        game_number = GameNumber.find([:id])
        game_number.destroy
    end

    private
    def game_numbers_params
        params.permit(:game_id, :number_id)
    end
end
