class ScoresController < ApplicationController
    def index
        render json: Score.all
    end

    def show
        score = score.find(params[:id])
        render json: score
    end

    def create
        score = Score.create(score_params)
        render json: score
    end

    private

    def score_params
        params.permit(:point, :game_id)
    end

end
