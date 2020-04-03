class LocationsController < ApplicationController
    def new
      @location = Location.new
    end

    def edit
      @location = Location.find_by(id: params[:id])
    end

    def index
      @location = Location.all
    end
    
    def show
      @location = Location.find_by(id: params[:id])
    end

    def update
      @location = Location.find_by(id: params[:id])
      @location.update(location_params)
      redirect_to user_path(current_user)unless @location.errors.any?
    end

    private

    def location_params
      params.require(:location).permit(:name)
    end

end
