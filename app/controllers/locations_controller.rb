class LocationsController < ApplicationController
    def new
      @location = Location.new
    end

    def edit

    end

    def index
      @location = Location.all
    end
    
    def show
    end

    def update
    end



end
