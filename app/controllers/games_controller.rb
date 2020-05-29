class GamesController < ApplicationController
    def index
        render json: Game.all
    end

    def show
        game = Game.find(params[:id])
        render json:game
    end

    def create
        game = Game.create(game_params)
        render json: game
    end

    private
    def game_params
        params.permit(:type, :user_id)
    end
end
