class ElementsController < ApplicationController
    def index 
        render json: Element.all
    end
end
