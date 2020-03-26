class DestinationsController < ApplicationController
    def new
      @destination = Destination.new
    end
  
    def index
      @destinations = Destination.all
    end
  
    def edit
    end
  
    def show
    end
end
