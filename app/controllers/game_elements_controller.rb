class GameElementsController < ApplicationController
    def index
        render json: GameElement.all
    end
end
