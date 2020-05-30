class GameElementsController < ApplicationController
    def index
        render json: GameElement.all
    end

    def show
        game_element = GameElement.find(params[:id])
        render json:game_element
    end
end
