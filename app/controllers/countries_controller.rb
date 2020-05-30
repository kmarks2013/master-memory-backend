class CountriesController < ApplicationController
    def index
        render json: Country.all
    end

    def show
        country = Country.find(params[:id])
        render json: country
    end
end
