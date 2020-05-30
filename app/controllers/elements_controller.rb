class ElementsController < ApplicationController
    def index
        render json: Element.all
    end

    def show
        element = Element.find(params[:id])
        render json: element
    end
end
