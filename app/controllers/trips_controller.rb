class TripsController < ApplicationController
    def new
      @trip = Trip.new
    end
  
    def index
      @trips = Trip.all
    end
  
    def edit
    end
  
    def show
    end
end
