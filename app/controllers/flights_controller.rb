class FlightsController < ApplicationController
    def new
      @flight = Flight.new
    end
  
    def create
        @flight = Flight.create(flight_params.merge(user_id: current_user.id))
        if @flight.save
        redirect_to flight_path(@flight)
        else
          render :new    
        end
    end

    def index
      @flight = Flight.all
    end
  
    def edit
      set_flight
    end
  
    def show
      set_flight
    end

    def update
      set_flight
      @flight.update(flight_params)
      redirect_to flight_path(@flight)    
    end
          
  private
  
  def set_flight
    @flight = Flight.find(params[:id])
  end

  def flight_params
    params.require(:flight).permit(:airline, :flight_information, :cost, :user_id)
  end
end
