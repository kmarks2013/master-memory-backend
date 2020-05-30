class GameElementsController < ApplicationController
    def index
        render json: GameElement.all
    end

    def show
        game_element = GameElement.find(params[:id])
        render json:game_element
    end

    def create
        game_element = GameElement.create(game_element_params)
        render json: game_element
    end

    def destroy
        game_element = GameElement.find([:id])
        game_element.destroy
    end
end
